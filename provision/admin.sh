#!/bin/bash

CHEFDK_PKG=chefdk_0.3.5-1_amd64.deb
CHEFDK_URI=https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64

pushd /tmp &> /dev/null
wget ${CHEFDK_URI}/${CHEFDK_PKG}
popd &> /dev/null

dpkg -i /tmp/${CHEFDK_PKG}

mkdir -p /home/vagrant/.berkshelf
cat <<'EOF' > /home/vagrant/.berkshelf/config.json
{
  "ssl": {
    "verify": false
  }
}
EOF

mkdir -p /home/vagrant/.ssh
cat <<'EOF' > /home/vagrant.ssh/id_rsa
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEA0dupTRn1bgzCWRZsSZHZhfQnyezypKpNAORKnncZ+yEkI9+4
T4oFRg6XK+yPEDrK5nYJCKelv7ek38Zk+ZQKBK91hFcCqMUD7K42EUJDyA1t4aF1
B23YZXpYbK5uqNQPSxVH7Bcxl0Cr1lBteP4SXRQy9TRnTG7thZgh3C8d36KzUCpY
ZM9u6bsTEH7r6VO6UQkfylwJUGjqw7rsSA1kC1fu2fReY4U4gQafoa5pCmt/etWK
quBeFZ26cgjD/4OvfSnRHN7c7cII6B79se6DogxWkYC9YqMqR/Iu68eCxNnFJDlH
a/LGkcPlUbHoLEan3xUlEsqsEAlZ1z030JsK1wIDAQABAoIBAQDB1aehzIlSFbzp
Nnnc1jdZr/OUYiSYjahEW5jEl3PK7oiIDhsadHx8gfuFmaFmtzcz+PBNKzRASaqi
+ofHssIyI7JjA080fY0rbpoIBPHAdQ76KfyDWSVYTdIgyFjz3bMmgciFu8KVVymg
8Xa8G8jwajjLHZUQFyGSlLspuedY6CuNVfyUd2EBhj6aksBRi+zKwJ+TGifxY5vx
HJ6LpywuabUspB7WHF1oHmPQPjFHOrz7RHuXkF9Srz53L2Am9m33qPzhuLWOGocV
vZumMPqYpBdXqYSATop3+4Kw+Kj0v01u3bRngfahn6J1GENAXcqmCJe1443jGxDy
7RYxoNfRAoGBAP90GlrOm9FiHHIcfBbcj7vGC2bpAg4v9u7HrejMr3llii8mIjN+
RSuO+Qp1e/FORXiQNzSfCOjzmAJQ1lLF2QZM7bOpGRTWn4WWJggrmEgO95e0q/PP
dzo6ROAH9PsCAWKV0nyIiILr87yNJso4Gu986raO3XuNXy3vRwEIHVF5AoGBANJO
lqDlSkgEjw+VOh2OdmoPh38R1cMiqccELCzPzU/OIxgCPWlHKD4nPB2ibypvB+b6
cjBsi1nmyHBhlwerdfQ1QC907LR+V2SPkyinyDmHfYrtFY9AjC0PaCJZ7DWvbr7e
SM2H10OyK19BsBcuKx+2uKhIZHN1Xl+GyRBKhvrPAoGAGG+Fudv7obrN18iLwjAU
+7RFEPIHBU5nQ44MP7Gcs3MYFcyDBwP0H+eMQQjd80Y2dQLulPUFiCsNBmOvLLnK
OcUQE9iAErM5DTFAsBVjerkbzAI3VJoq4IIEZp28PGqDsWd9e/YfgM6LQSULadqW
EQSU+yONYi0yxpUV6K5bB5kCgYB+CgVyRhi/kqPelfOvdQr4w3fUKu8utJ6FnLWQ
4bVNZ+BWajk92ByBK2h25juzdbmJr30yEkttxMdJuuMWAKd/hU6DYpLeFX3w0a9D
RVLVT6No2G/8W5XnB33EYJoVDp/TmkqNiyTy+FvQCgEr00qbBhojGMfC/othutjT
f6bntwKBgQCbG8VN22jG5l1b2Hf95GIJ1NuKFuQ7NTgEvliRu43flIDanxYHDGG9
9hd1KuSOQBNqE0921tyvNJtUn8VoIBB8T6cwyeFChWoJ+LfO3eYIMS9tMOSVyfs6
IJqSRJOEddN6VzGbuZuz4EbUrleeCRS6a6g4unXvsTu/F+rpUdnylw==
-----END RSA PRIVATE KEY-----
EOF
