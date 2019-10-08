Feature: Testing Redirections accoring to GEOIP

Scenario Outline: Desktop user in given location and with given language should be redirected to given site
  	Given I am located in "<location>"
  	And I have language "<language>"
  	And I visit with these setting
  	Then I should get redirected to "<site>"
  	Then I should get 200

Examples:
  | location  | language  | site  |
  | US        | en        | us    |
  | GB        | en        | gb    |
  | IN        | en        | in    |
  | MX        | es        | mx    |
  | ES        | es        | es    |
  | BR        | pt        | br    |
  | CN        | zh        | cn    |
  | DE        | de        | de    |
  | FR        | fr        | fr    |
  | RU        | ru        | ru    |
  | SE        | sv        | se    |
  | ID        | id        | id    |
  | DK        | da        | dk    |
  | GR        | el        | gr    |
  | IL        | he        | il    |
  | IT        | it        | it    |
  | NL        | nl        | nl    |
  | NO        | no        | no    |
  | PL        | pl        | pl    |
  | PT        | pt        | pt    |
  | TR        | tr        | tr    |
  | AU        | en        | au    |
  | AT        | de        | at    |
  | CA        | en        | ca-en |
  | CA        | fr        | ca-fr |
  | IE        | en        | ie    |
  | MY        | en        | my    |
  | SA        | ar        | sa    |
  | SG        | en        | sg    |
  | CH        | fr        | ch-fr |
  | CH        | de        | ch-de |
  | TW        | zh        | tw    |
  | KR        | ko        | kr    |
  | CO        | es        | co    |
  | ZA        | en        | za    |
  | AE        | ar        | ae    |
  | VN	      | vi	      | vn    |
  | TH	      | th	      | th    |
  | BE        | nl-BE     | be    |
  | BE        | fr-BE     | be-fr |
  | CZ        | cs-CZ     | cz    |
  | FI        | fi-FI     | fi    |
  | HU        | hu-HU     | hu    |
  | RO        | ro-RO     | ro    |
  | UA        | uk-UA     | ua    |
  | BG        | bg-BG     | bg    |
  | KR        | ko-KR     | kr    |
  | IR        | fa-IR     | ir    |
  | TH        | th-th     | th    |