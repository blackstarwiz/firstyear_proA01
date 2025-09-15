use jason_db;

set sql_safe_updates = 0;

alter table Gebruikers
add column Id int auto_increment primary key;

set sql_safe_updates = 1;

INSERT INTO Gebruikers (Gebruikersnaam, HashVanWachtwoord) VALUES
('MaximeV', '5f4dcc3b5aa765d61d8327deb882cf99'),
('JeroenK', 'e99a18c428cb38d5f260853678922e03'),
('SanneD', 'd8578edf8458ce06fbc5bb76a58c5ca4'),
('RobinH', '25d55ad283aa400af464c76d713c07ad'),
('LisaM', '5d41402abc4b2a76b9719d911017c592'),
('ThomasB', '7c6a180b36896a0a8c02787eeafb0e4c'),
('EmmaJ', '6c569aabbf7775ef8fc570e228c16b98'),
('NoahS', 'e10adc3949ba59abbe56e057f20f883e'),
('LauraT', '098f6bcd4621d373cade4e832627b4f6'),
('DaanL', '1f3870be274f6c49b3e31a0c6728957f'),
('SophieP', '3e25960a79dbc69b674cd4ec67a72c62'),
('BramW', '7b52009b64fd0a2a49e6d8a939753077'),
('JulieC', '0d107d09f5bbe40cade3de5c71e9e9b7'),
('MilanX', '6c8349cc7260ae62e3b1396831a8398f'),
('HanneF', '8f14e45fceea167a5a36dedd4bea2543'),
('RubenG', '45c48cce2e2d7fbdea1afc51c7c6ad26'),
('EliseZ', '6512bd43d9caa6e02c990b0a82652dca'),
('LarsN', 'c20ad4d76fe97759aa27a0c99bff6710'),
('EvaY', 'c51ce410c124a10e0db5e4b97fc2af39'),
('WoutQ', 'aab3238922bcc25a6f606eb525ffdc56'),
('KatoO', '9bf31c7ff062936a96d3c8bd1f8f2ff3'),
('JonasE', 'c74d97b01eae257e44aa9d5bade97baf'),
('BoV', '70efdf2ec9b086079795c442636b55fb'),
('MatthiasR', '6ea9ab1baa0efb9e19094440c317e21b'),
('CharlotteA', '33e75ff09dd601bbe69f351039152189'),
('VictorU', '093f65e080a295f8076b1c5722a46aa2'),
('MarieD', '6f4922f45568161a8cdf4ad2299f6d23'),
('YannickK', '5a105e8b9d40e1329780d62ea2265d8a'),
('NinaB', '3c59dc048e8850243be8079a5c74d079'),
('JasperM', 'b6d767d2f8ed5d21a44b0e5886680cb9');


select * from gebruikers;