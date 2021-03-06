cask 'skyfonts' do
  version '5.7.1.0'
  sha256 '3372bb7a3e622769f63ea1345a334361ec660966d4060f89c57437bda7c49203'

  # cdn1.skyfonts.com was verified as official when first introduced to the cask
  url "http://cdn1.skyfonts.com/client/Monotype_SkyFonts_Mac64_#{version}.dmg"
  name 'SkyFonts'
  homepage 'https://www.fonts.com/web-fonts/google'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer manual: 'SkyFonts.app'

  uninstall quit:      [
                         'com.mti.Monotype-SkyFonts',
                         'com.mti.Monotype-SkyFontsHelper',
                       ],
            launchctl: 'com.mti.Monotype-SkyFontsHelper',
            delete:    '/Applications/Skyfonts'
end
