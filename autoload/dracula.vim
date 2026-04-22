function! dracula#palette(name) abort
  let l:palettes = {
        \ 'dracula': {
        \   'fg': ['#F8F8F2', 253],
        \   'bglighter': ['#424450', 238],
        \   'bglight': ['#343746', 237],
        \   'bg': ['#282A36', 236],
        \   'bgdark': ['#21222C', 235],
        \   'bgdarker': ['#191A21', 234],
        \   'comment': ['#6272A4', 61],
        \   'selection': ['#44475A', 239],
        \   'subtle': ['#424450', 238],
        \   'cyan': ['#8BE9FD', 117],
        \   'green': ['#50FA7B', 84],
        \   'orange': ['#FFB86C', 215],
        \   'pink': ['#FF79C6', 212],
        \   'purple': ['#BD93F9', 141],
        \   'red': ['#FF5555', 203],
        \   'yellow': ['#F1FA8C', 228],
        \   'color_0': '#21222C',
        \   'color_1': '#FF5555',
        \   'color_2': '#50FA7B',
        \   'color_3': '#F1FA8C',
        \   'color_4': '#BD93F9',
        \   'color_5': '#FF79C6',
        \   'color_6': '#8BE9FD',
        \   'color_7': '#F8F8F2',
        \   'color_8': '#6272A4',
        \   'color_9': '#FF6E6E',
        \   'color_10': '#69FF94',
        \   'color_11': '#FFFFA5',
        \   'color_12': '#D6ACFF',
        \   'color_13': '#FF92DF',
        \   'color_14': '#A4FFFF',
        \   'color_15': '#FFFFFF',
        \ },
        \ 'alucard': {
        \   'fg': ['#1F1F1F', 232],
        \   'bglighter': ['#ECE9DF', 253],
        \   'bglight': ['#DEDCCF', 252],
        \   'bg': ['#FFFBEB', 230],
        \   'bgdark': ['#CECCC0', 250],
        \   'bgdarker': ['#BCBAB3', 249],
        \   'comment': ['#6C664B', 144],
        \   'selection': ['#CFCFDE', 188],
        \   'subtle': ['#ECE9DF', 253],
        \   'cyan': ['#036A96', 24],
        \   'green': ['#14710A', 22],
        \   'orange': ['#A34D14', 130],
        \   'pink': ['#A3144D', 125],
        \   'purple': ['#644AC9', 98],
        \   'red': ['#CB3A2A', 160],
        \   'yellow': ['#846E15', 100],
        \   'color_0': '#FFFBEB',
        \   'color_1': '#CB3A2A',
        \   'color_2': '#14710A',
        \   'color_3': '#846E15',
        \   'color_4': '#644AC9',
        \   'color_5': '#A3144D',
        \   'color_6': '#036A96',
        \   'color_7': '#1F1F1F',
        \   'color_8': '#6C664B',
        \   'color_9': '#D74C3D',
        \   'color_10': '#198D0C',
        \   'color_11': '#9E841A',
        \   'color_12': '#7862D0',
        \   'color_13': '#BF185A',
        \   'color_14': '#047FB4',
        \   'color_15': '#2C2B31',
        \ },
        \}

  return copy(get(l:palettes, a:name, l:palettes.dracula))
endfunction

function! dracula#current_palette() abort
  return dracula#palette(&background ==# 'dark' ? 'dracula' : 'alucard')
endfunction

function! dracula#palette_name() abort
  return &background ==# 'dark' ? 'dracula' : 'alucard'
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
