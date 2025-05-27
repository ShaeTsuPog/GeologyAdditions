local itemtypes = import 'itemtypes.libsonnet';

{
  'axe-stone.json': [
                      {
                        op: 'remove',
                        path: '/texturesByType/*',
                        file: 'game:itemtypes/tool/axe-stone.json',
                      },
                      {
                        op: 'remove',
                        path: '/texturesByType/*',
                        file: 'game:itemtypes/toolhead/axehead.json',
                      },
                      {
                        op: 'addmerge',
                        path: '/texturesByType/@axehead-(copper|tinbronze|bismuthbronze|blackbronze|gold|silver|iron|meteoriciron|steel)',
                        value: {
                          material: { base: 'block/metal/ingot/{material}' },
                          string: { base: 'block/transparent' },
                          handle: { base: 'block/transparent' },
                        },
                        file: 'game:itemtypes/toolhead/axehead.json',
                      },
                    ]
                    + itemtypes.add_stone_axe_patch('diorite', 60)
                    + itemtypes.add_stone_axe_patch('gabbro', 60)
                    + itemtypes.add_stone_axe_patch('quartzite', 80),

  'knife.json': [
                  {
                    op: 'remove',
                    path: '/shapeByType/*',
                    file: 'game:itemtypes/tool/knife.json',
                  },
                  {
                    op: 'addmerge',
                    path: '/shapeByType/@knife-generic-(copper|tinbronze|bismuthbronze|blackbronze|gold|silver|iron|steel|meteoriciron)',
                    file: 'game:itemtypes/tool/knife.json',
                    value: { base: 'item/tool/knife/copper' },
                  },
                  {
                    op: 'remove',
                    path: '/texturesByType/knife-generic-*',
                    file: 'game:itemtypes/tool/knife.json',
                  },
                  {
                    op: 'addmerge',
                    path: '/texturesByType/@knife-generic-(copper|tinbronze|bismuthbronze|blackbronze|gold|silver|iron|steel|meteoriciron)',
                    value: {
                      material: { base: 'block/metal/ingot/{material}' },
                    },
                    file: 'game:itemtypes/tool/knife.json',
                  },
                  {
                    op: 'remove',
                    path: '/texturesByType/*',
                    file: 'game:itemtypes/toolhead/knifeblade.json',
                  },
                  {
                    op: 'addmerge',
                    path: '/texturesByType/@knifeblade-(copper|tinbronze|bismuthbronze|blackbronze|gold|silver|iron|steel|meteoriciron)',
                    value: {
                      material: { base: 'block/metal/ingot/{material}' },
                      string: { base: 'block/transparent' },
                      handle: { base: 'block/transparent' },
                    },
                    file: 'game:itemtypes/toolhead/knifeblade.json',
                  },
                  {
                    op: 'addmerge',
                    path: '/0/ingredients/T/allowedVariants',
                    value: [
                      'copper',
                      'tinbronze',
                      'bismuthbronze',
                      'blackbronze',
                      'gold',
                      'silver',
                      'iron',
                      'meteoriciron',
                      'steel',
                      'chert',
                      'flint',
                      'granite',
                      'andesite',
                      'basalt',
                      'obsidian',
                      'peridotite',
                    ],
                    file: 'game:recipes/grid/tool/knife.json',
                  },
                ]
                + itemtypes.add_stone_knife_patch('diorite', 90, 1, 0.75)
                + itemtypes.add_stone_knife_patch('gabbro', 90, 1, 0.75)
                + itemtypes.add_stone_knife_patch('quartzite', 120, 1.2, 0.9),
}
