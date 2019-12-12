{ lib, fetchFromGitHub, buildGoModule }:

buildGoModule rec {
  name = "dtn7-go";
  version = "0.5.2";

  src = fetchFromGitHub {
    owner = "dtn7";
    repo = "dtn7-go";
    rev = "v${version}";
    sha256 = "1i6i98jimp6k3m4b6hh26hwhmm0s0mafmf9584h02bi1z51r6b11";
  };

  modSha256 = "1rbpq6b1c3pfvrlb53ynfk7d53ylsp90c3m8k3k7wjp0sy982li5";

  meta = with lib; {
    description = "Delay-tolerant networking software suite, Bundle Protocol Version 7";
    homepage = "https://github.com/dtn7/dtn7-go";
    license = licenses.gpl3;
    maintainers = with maintainers; [ geistesk ];
  };
}
