#import "template.typ": *

#show: cv.with(
  name: "Tryton Lux",
  website: "trytonvanmeer.dev",
  email: "hello@tryton.thelux.family",
  github: "tryton-vanmeer"
)

= Work Experience

#exp(
  "Oxaro / RCGT Consulting",
  "Cloud Operations Developer",
  "Feb 2021 — Current",
  [
    - DRAFT
    - Deploy systems using IaC
    - Architect new deployments
    - Perform interviews with potential hires
  ]
)

#exp(
  "DLS Technology",
  "Software Developer",
  "Nov 2019 — Feb 2021",
  [
    - Design/build vulnerability tracker using ReactJS and Python/FastAPI
    - Implment optimizations for Windows VMs under Linux/KVM
    - Write user facing documentation
    - Implement new features in existing PHP application
  ]
)

= Projects

#link("https://github.com/tryton-vanmeer/ProtonDB-for-Steam")[*ProtonDB-for-Steam*]
Firefox extension that shows ratings from protondb.com on Steam

#link("https://github.com/tryton-vanmeer/titanium-server-config")[*Home Server*]
Fedora Server serving as a NAS (Samba/NFS) and host for various applications Source

#link("https://github.com/tryton-vanmeer/Toshokan")[*Toshokan*]
CLI tool, written in Rust, for interacting with your Steam library on Linux
