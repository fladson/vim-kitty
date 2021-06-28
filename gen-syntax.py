from kitty.conf.types import ShortcutMapping,Option,Group
from kitty.options.definition import definition
from kitty.options.utils import args_funcs

def find_options(group):
  opts = []
  actions = []
  for i in group.items:
    if type(i) is Group:
      rec_opts, rec_actions = find_options(i)
      opts += rec_opts
      actions += rec_actions
    else:
      if type(i) is ShortcutMapping:
        actions.append(i.name)
      else:
        opts.append(i.name)
  return opts, actions


all_opts, all_actions = find_options(definition.root_group)
all_actions += args_funcs.keys()

all_opts = sorted(list(set(all_opts)))
all_actions = sorted(list(set(all_actions)))

def chunks(lst, n):
    """Yield successive n-sized chunks from lst."""
    for i in range(0, len(lst), n):
        yield lst[i:i + n]

kittyKeyword = ['syn keyword kittyKeyword contained\n'] + [
    " \\ " + " ".join(i) + "\n" for i in chunks(all_opts, 8)
    ]

kittyAction = ['syn keyword kittyAction contained\n'] + [
    " \\ " + " ".join(i) + "\n" for i in chunks(all_actions, 8)
    ]
    

with open("syntax/kitty.vim") as f:
  infile = list(f)
non_generated = infile.index('" START GENERATED CODE\n') + 1
updated_file = infile[0:non_generated] + kittyKeyword + kittyAction

with open("syntax/kitty.vim", 'w') as f:
  f.writelines(updated_file)
