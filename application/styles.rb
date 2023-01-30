# frozen_string_literal: true

def vie_styles
  action_height = 39
  toolbox_with = 52
  inspector_with = 120
  navigation_height = 30
  margin = 9
  smooth = 3
  {
    margin: margin,
    toolbox_with: 60,
    inspector_with: inspector_with,
    navigation_height: 30,
    text_color: { red: 0.6, green: 0.6, blue: 0.6, id: :text_color },
    list_style: { visual: { size: 15 }, width: 99, left: 9, attached: [:inactive_color] },
    back_color: { red: 0.1, green: 0.1, blue: 0.1, id: :back_color },
    title: { id: :title, visual: { size: 21 }, width: :auto, left: 25, center: :horizontal, top: 9, attached: [:inactive_color] },
    toolbox_color: { red: 0.15, green: 0.15, blue: 0.15, id: :toolbox_color },
    center_color: { red: 0, green: 0, blue: 0,alpha: 0, id: :center_color },
    action_color: { red: 0, green: 0, blue: 0, alpha: 0, id: :action_color },
    inspector_color: { red: 0.15, green: 0.15, blue: 0.15, id: :inspector_color },
    active_color: { red: 0.8, green: 0.36, blue: 0.07, id: :active_color },
    inactive_color: { red: 0.3, green: 0.3, blue: 0.3, id: :inactive_color },
    dark_color: { red: 0.127, green: 0.127, blue: 0.127, id: :dark_color },
    darker_color: { red: 0.127, green: 0.127, blue: 0.127, id: :darker_color },
    cell_color: { red: 0.127, green: 0.127, blue: 0.127, id: :cell_color },
    cell_connected: { red: 154 / 255, green: 205 / 255, blue: 50 / 255, id: :cell_connected },
    cell_shadow: { blur: 9, left: 3, top: 3, id: :cell_shadow, red: 0, green: 0, blue: 0, alpha: 0.6 },
    toolbox_style: { id: :toolbox, overflow: :hidden, left: margin, top: action_height+margin, smooth: smooth, width: toolbox_with, bottom: 30, height: 420, attached: [:toolbox_color] },
    inspector_style: { id: :inspector, left: toolbox_with + margin * 2, top: action_height+margin, smooth: smooth, width: inspector_with, bottom: 0, height: 420, overflow: :auto, attached: [:inspector_color] },
    action_style: { id: :action, left: toolbox_with, top: 0, width: :auto, right: 0, height: action_height,attached: [:action_color] },
    filer: { id: :filer, top: 12, bottom: 36, left: 6, width: inspector_with - 12, overflow: :auto, height: :auto, attached: [:darker_color], smooth: 6 },
    support_style: { left: 6, width: 33, height: 33, attached: [:toolbox_color] },
    center_style: { id: :center, left: toolbox_with + inspector_with + margin * 3, bottom: navigation_height, top: action_height, right: 0, width: :auto, height: :auto, attached: [:center_color] },
  }
end

# colors

color(vie_styles[:back_color])
color(vie_styles[:toolbox_color])
color(vie_styles[:action_color])
color(vie_styles[:inspector_color])
color(vie_styles[:center_color])
color(vie_styles[:darker_color])
color(vie_styles[:dark_color])
color(vie_styles[:text_color])
color(vie_styles[:active_color])
color(vie_styles[:inactive_color])
color(vie_styles[:cell_connected])

shadow(vie_styles[:cell_shadow])

grab(:view).attached(:back_color)

