module Spina::SpinaHelper

  def spina_importmap_tags(entry_point = "application", shim: true)
    safe_join [
      javascript_inline_importmap_tag(Spina.config.importmap.to_json(resolver: self)),
      javascript_importmap_module_preload_tags(Spina.config.importmap),
      (javascript_importmap_shim_nonce_configuration_tag if shim),
      (javascript_importmap_shim_tag if shim),
      javascript_import_module_tag(entry_point)
    ], "\n"
  end

  def sidebar_on?
    ENV['ADMIN_SIDEBAR'] == 'true'
  end

  def sidebar_h_full
    sidebar_on? ? 'md:h-full' : ''
  end

  def sidebar_list_style
    sidebar_on? ? '' : 'list-none'
  end

end
