return {
  name = 'SpringBoard LD42',
  shortName = 'SB_LD42',
  version = '$VERSION',
  mutator = 'Official',
  modtype = 1,
  depend = {
      --'rapid://sbc:test',
      'SpringBoard Core $VERSION',
      --'rapid://zk:stable',
      'Ludum Dare 42 Git',
  },
}
