User.seed(:id,
  { id: 1, username: 'yyamada', password_digest: '$2a$10$uTwYyniemA7y7.z80yw17uqmRzN/LggEoSzUe.tXGdCUWPvYp9M2m', email: 'yyamada@wings.msn.to', dm: true, roles: ['admin', 'manager'], reviews_count: 2 },
  { id: 2, username: 'isatou', password_digest:' $2a$10$uTwYyniemA7y7.z80yw17uqmRzN/LggEoSzUe.tXGdCUWPvYp9M2m', email: 'isatou@wings.msn.to', dm: false, roles: ['admin'], reviews_count: 2 },
  { id: 3, username: 'hsuzuki', password_digest: '$2a$10$uTwYyniemA7y7.z80yw17uqmRzN/LggEoSzUe.tXGdCUWPvYp9M2m', email: 'hsuzuki@wings.msn.to', dm: true, roles: ['manager'], reviews_count: 2 },
  { id: 4, username: 'tyamamoto', password_digest: '$2a$10$uTwYyniemA7y7.z80yw17uqmRzN/LggEoSzUe.tXGdCUWPvYp9M2m', email: 'tyamamoto@wings.msn.to', dm: false, roles: ['member'], reviews_count: 1 },
  { id: 5, username: 'shayashi', password_digest: '$2a$10$uTwYyniemA7y7.z80yw17uqmRzN/LggEoSzUe.tXGdCUWPvYp9M2m', email: 'shayashi@wings.msn.to', dm: true, roles: ['member'], reviews_count: 2 },
  { id: 6, username: 'nkakeya', password_digest: '$2a$10$uTwYyniemA7y7.z80yw17uqmRzN/LggEoSzUe.tXGdCUWPvYp9M2m', email: 'nami-piano@nifty.com', dm: true, roles: ['manager', 'member'], reviews_count: 0 }
)