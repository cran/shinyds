## -----------------------------------------------------------------------------
#| label: setup
#| include: false
library(shinyds)


## -----------------------------------------------------------------------------
#| eval: false
# # UI
# ds_toggle_group(
#   "view_mode",
#   tags$button(class = "ds-button", `data-variant` = "secondary",
#               `aria-pressed` = "true",  value = "list", "List"),
#   tags$button(class = "ds-button", `data-variant` = "secondary",
#               `aria-pressed` = "false", value = "grid", "Grid"),
#   tags$button(class = "ds-button", `data-variant` = "secondary",
#               `aria-pressed` = "false", value = "map",  "Map")
# )
# 
# # Server
# observeEvent(input$view_mode, {
#   # input$view_mode is "list", "grid", or "map"
# })


## -----------------------------------------------------------------------------
#| eval: false
# # UI
# ds_details(
#   id      = "my_details",
#   summary = "Click to expand",
#   ds_paragraph("Hidden content revealed on open.")
# )
# 
# tags$script(HTML("
#   document.getElementById('my_details').addEventListener('toggle', function(e) {
#     Shiny.setInputValue('my_details_open', e.target.open, {priority: 'event'});
#   });
# "))
# 
# # Server
# observeEvent(input$my_details_open, {
#   if (isTRUE(input$my_details_open)) {
#     # user expanded the panel
#   }
# })


## -----------------------------------------------------------------------------
#| eval: false
# # UI
# ds_button("Delete item", inputId = "open_confirm", variant = "primary")
# 
# ds_dialog(
#   id = "confirm-dialog",
#   ds_heading("Confirm deletion", level = 2, size = "md"),
#   ds_paragraph("This action cannot be undone."),
#   tags$div(
#     style = "display:flex; gap:0.75rem; margin-top:1rem;",
#     ds_button("Delete", inputId = "btn_confirm", variant = "primary"),
#     ds_button("Cancel", inputId = "btn_cancel",  variant = "secondary")
#   )
# )
# 
# # Server
# observeEvent(input$open_confirm, {
#   show_ds_dialog("confirm-dialog")
# })
# 
# observeEvent(input$btn_cancel, {
#   hide_ds_dialog("confirm-dialog")
# })
# 
# observeEvent(input$btn_confirm, {
#   hide_ds_dialog("confirm-dialog")
#   # perform deletion
# })


## -----------------------------------------------------------------------------
#| eval: false
# tags$script(HTML("
#   document.getElementById('confirm-dialog').addEventListener('close', function(e) {
#     Shiny.setInputValue('confirm_result', e.target.returnValue, {priority: 'event'});
#   });
# "))


## -----------------------------------------------------------------------------
#| eval: false
# # UI
# ds_button("Info", inputId = "info-btn", `popovertarget` = "info-pop")
# 
# ds_popover(
#   id      = "info-pop",
#   popover = NA,
#   ds_paragraph("Contextual help text.")
# )
# 
# tags$script(HTML("
#   var pop = document.getElementById('info-pop');
#   pop.addEventListener('toggle', function(e) {
#     Shiny.setInputValue('info_pop_open', e.newState === 'open', {priority: 'event'});
#   });
# "))
# 
# # Server
# observeEvent(input$info_pop_open, {
#   if (isTRUE(input$info_pop_open)) {
#     # log that user opened the popover, lazy-load content, etc.
#   }
# })


## -----------------------------------------------------------------------------
#| eval: false
# # UI
# ds_fieldset(
#   id     = "notif-fieldset",
#   legend = "Notification preferences",
#   ds_checkbox("notif_email", label = "Email"),
#   ds_checkbox("notif_sms",   label = "SMS"),
#   ds_checkbox("notif_push",  label = "Push")
# )
# 
# tags$script(HTML("
#   document.getElementById('notif-fieldset').addEventListener('change', function(e) {
#     var checked = Array.from(
#       e.currentTarget.querySelectorAll('input[type=checkbox]:checked')
#     ).map(function(el) { return el.id; });
#     Shiny.setInputValue('notif_prefs', checked);
#   });
# "))
# 
# # Server
# observeEvent(input$notif_prefs, {
#   # input$notif_prefs is a character vector of checked checkbox IDs
# })


## -----------------------------------------------------------------------------
#| eval: false
# # UI
# ds_dropdown(
#   trigger = ds_button("Options", inputId = "btn_options", variant = "secondary"),
#   ds_list(
#     ds_list_item(ds_link("Edit",   href = "#")),
#     ds_list_item(ds_link("Delete", href = "#"))
#   )
# )
# 
# tags$script(HTML("
#   (function() {
#     var open = false;
#     document.getElementById('btn_options').addEventListener('click', function() {
#       open = !open;
#       Shiny.setInputValue('options_open', open, {priority: 'event'});
#     });
#   })();
# "))
# 
# # Server
# observeEvent(input$options_open, {
#   if (isTRUE(input$options_open)) {
#     # dropdown was opened — lazy-load data, log analytics, etc.
#   }
# })

