# Class defining the unosat VO, as seen by the VOMS service.
#
# Takes care of all the required setup to enable access to the unosat VO
# (users and services) in a grid enabled machine.
#
# == Examples
# 
# Simply enable this class:
#   class{'voms::unosat':}
#
# == Authors
#
# CERN IT/GT/DMS <it-dep-gt-dms@cern.ch>
# CERN IT/PS/PES <it-dep-ps-pes@cern.ch>

class voms::unosat {
  voms::client{'unosat':
      servers  => [{server => 'voms.cern.ch',
                    port   => '15006',
                    dn    => '/DC=ch/DC=cern/OU=computers/CN=voms.cern.ch',
                    ca_dn => '/DC=ch/DC=cern/CN=CERN Trusted Certification Authority'
                   },
                   {server => 'lcg-voms.cern.ch',
                    port   => '15006',
                    dn    => '/DC=ch/DC=cern/OU=computers/CN=lcg-voms.cern.ch',
                    ca_dn => '/DC=ch/DC=cern/CN=CERN Trusted Certification Authority'
                   }]
 }
}
