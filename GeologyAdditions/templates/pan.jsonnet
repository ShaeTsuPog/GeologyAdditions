{
  'pan.json': [
    {
      op: 'addmerge',
      path: '/attributes/panningDrops/@(bonysoil|bonysoil-.*)/-',
      value: { type: 'item', code: 'nugget-nativeplatinum', chance: { avg: 0.01, var: 0 } },
      file: 'game:blocktypes/wood/pan.json',
    },
    {
      op: 'addmerge',
      path: '/attributes/panningDrops/@(sand|gravel)-.*/-',
      value: { type: 'item', code: 'nugget-nativesilver', chance: { avg: 0.008, var: 0 } },
      file: 'game:blocktypes/wood/pan.json',
    },
    {
      op: 'addmerge',
      path: '/attributes/panningDrops/@(sand|gravel)-.*/-',
      value: { type: 'item', code: 'nugget-nativeplatinum', chance: { avg: 0.004, var: 0 } },
      file: 'game:blocktypes/wood/pan.json',
    },
  ],
}
