## -----------------------------------------------------------------------------
#| label: setup
#| include: false
library(shinyds)


## -----------------------------------------------------------------------------
#| eval: false
# # install.packages("remotes")
# remotes::install_github("your-org/shinyds")


## -----------------------------------------------------------------------------
#| eval: false
# library(shiny)
# library(bslib)
# library(shinyds)
# 
# ui <- bslib::page_fluid(
#   use_designsystemet(),
# 
#   ds_heading("Hello Designsystemet!", level = 1),
#   ds_paragraph("A Shiny app using Norwegian government design components."),
# 
#   ds_field(
#     ds_label("Your name", `for` = "name"),
#     ds_input("name", placeholder = "Enter your name")
#   ),
# 
#   ds_button("Submit", inputId = "submit", variant = "primary"),
# 
#   verbatimTextOutput("out")
# )
# 
# server <- function(input, output, session) {
#   output$out <- renderPrint(list(name = input$name, clicks = input$submit))
# }
# 
# shinyApp(ui, server)


## -----------------------------------------------------------------------------
#| eval: false
# ui <- bslib::page_fluid(
#   use_designsystemet(),
#   ds_theme(
#     color          = "brand1",       # global color context
#     border_radius  = "2px",          # tighter corners
#     button_padding = "0.3rem 0.8rem" # compact buttons
#   ),
#   # ... components
# )


## -----------------------------------------------------------------------------
#| eval: false
# ds_theme(`--ds-border-width-focus` = "3px")


## -----------------------------------------------------------------------------
#| eval: false
# # label first, then inputId
# ds_button("Click me",  inputId = "btn1", variant = "primary")
# ds_button("Secondary", inputId = "btn2", variant = "secondary")
# ds_button("Tertiary",  inputId = "btn3", variant = "tertiary")
# 
# # sizes
# ds_button("Small",  size = "sm")
# ds_button("Medium", size = "md")
# ds_button("Large",  size = "lg")
# 
# # states
# ds_button("Disabled", variant = "primary", disabled = TRUE)
# ds_button("Loading",  variant = "secondary", loading = TRUE)


## -----------------------------------------------------------------------------
#| eval: false
# # equivalent to shiny::actionButton("go", "Submit")
# ds_action_button("go", "Submit", variant = "primary")


## -----------------------------------------------------------------------------
#| eval: false
# ds_field(
#   ds_label("Email", `for` = "email"),
#   ds_input("email", type = "email", placeholder = "you@example.com"),
#   ds_validation_message("Must be a valid email address", variant = "error")
# )
# 
# ds_field(
#   ds_label("Message", `for` = "msg"),
#   ds_textarea("msg", placeholder = "Type here…", rows = 4)
# )


## -----------------------------------------------------------------------------
#| eval: false
# ds_checkbox("agree", label = "I accept the terms")
# 
# # Radio buttons — group them with a shared name
# ds_radio("opt_a", label = "Option A", value = "a", name = "opts", checked = TRUE)
# ds_radio("opt_b", label = "Option B", value = "b", name = "opts")


## -----------------------------------------------------------------------------
#| eval: false
# ds_field(
#   ds_label("Country", `for` = "country"),
#   ds_select("country",
#     choices  = c("Norway" = "no", "Sweden" = "se", "Denmark" = "dk"),
#     selected = "no"
#   )
# )


## -----------------------------------------------------------------------------
#| eval: false
# ds_fieldset(
#   legend = "Notification preferences",
#   ds_checkbox("notif_email", label = "Email"),
#   ds_checkbox("notif_sms",   label = "SMS"),
#   ds_checkbox("notif_push",  label = "Push")
# )


## -----------------------------------------------------------------------------
#| eval: false
# # Search input — input$q returns the current text
# ds_field(
#   ds_label("Search", `for` = "q"),
#   ds_search("q", placeholder = "Search…")
# )
# 
# # Autocomplete suggestion — input$fruit returns the selected value
# ds_field(
#   ds_label("Fruit", `for` = "fruit"),
#   ds_suggestion("fruit",
#     choices     = c("Apple", "Banana", "Cherry"),
#     placeholder = "Start typing…"
#   )
# )


## -----------------------------------------------------------------------------
#| eval: false
# ui <- bslib::page_fluid(
#   use_designsystemet(),
#   uiOutput("error_summary"),
#   ds_field(
#     ds_label("Email", `for` = "email"),
#     ds_input("email", placeholder = "you@example.com"),
#     uiOutput("email_error")
#   ),
#   ds_button("Submit", inputId = "submit", variant = "primary")
# )
# 
# server <- function(input, output, session) {
#   observeEvent(input$submit, {
#     errors <- list()
# 
#     if (!nzchar(trimws(input$email %||% ""))) {
#       errors$email <- "Email is required"
#     } else if (!grepl("@", input$email, fixed = TRUE)) {
#       errors$email <- "Must be a valid email address"
#     }
# 
#     output$email_error <- renderUI({
#       if (!is.null(errors$email))
#         ds_validation_message(errors$email, variant = "error")
#     })
# 
#     output$error_summary <- renderUI({
#       if (length(errors) > 0)
#         ds_error_summary(
#           heading = "Please fix the following errors",
#           tags$li(ds_link(errors$email, href = "#email"))
#         )
#     })
#   })
# }


## -----------------------------------------------------------------------------
#| eval: false
# # Headings — level sets the HTML element (h1–h6), size sets the visual token
# ds_heading("Page Title",    level = 1, size = "2xl")
# ds_heading("Section Title", level = 2, size = "lg")
# ds_heading("Card Title",    level = 3, size = "md")
# 
# ds_paragraph("Body copy.", size = "md")
# ds_paragraph("Small caption.", size = "sm")
# 
# ds_link("Designsystemet", href = "https://designsystemet.no")
# 
# ds_list(
#   ds_list_item("First"),
#   ds_list_item("Second"),
#   ds_list_item("Third"),
#   ordered = TRUE
# )


## -----------------------------------------------------------------------------
#| eval: false
# ds_card(
#   ds_card_block(
#     ds_heading("Card Title", level = 3, size = "sm"),
#     ds_paragraph("Card content.")
#   )
# )
# 
# ds_card(variant = "tinted",
#   ds_card_block("Highlighted content")
# )


## -----------------------------------------------------------------------------
#| eval: false
# ds_table(
#   ds_thead(
#     ds_tr(ds_th("Name"), ds_th("Role"), ds_th("Status"))
#   ),
#   ds_tbody(
#     ds_tr(ds_td("Alice"), ds_td("Developer"),
#           ds_td(ds_tag("Active", color = "success"))),
#     ds_tr(ds_td("Bob"),   ds_td("Designer"),
#           ds_td(ds_tag("Active", color = "success")))
#   )
# )


## -----------------------------------------------------------------------------
#| eval: false
# ds_tabs("my_tabs",
#   ds_tablist(
#     ds_tab("Overview",  value = "overview",  selected = TRUE),
#     ds_tab("Details",   value = "details")
#   ),
#   ds_tabpanel(value = "overview",
#     ds_paragraph("Overview content.")
#   ),
#   ds_tabpanel(value = "details",
#     ds_paragraph("Details content.")
#   )
# )
# 
# # In server: input$my_tabs returns the selected tab value string


## -----------------------------------------------------------------------------
#| eval: false
# ds_pagination("pager", current = 1, total = 10)
# 
# # In server: input$pager returns the current page number (integer)


## -----------------------------------------------------------------------------
#| eval: false
# ds_breadcrumbs(
#   tags$ol(
#     tags$li(ds_link("Home",     href = "/")),
#     tags$li(ds_link("Reports",  href = "/reports")),
#     tags$li(tags$span("Annual summary"))  # current page — plain text, no link
#   )
# )


## -----------------------------------------------------------------------------
#| eval: false
# ui <- bslib::page_fluid(
#   use_designsystemet(),
#   ds_skip_link("Skip to main content", href = "#main"),
#   # ... navigation ...
#   tags$main(id = "main",
#     # ... page content ...
#   )
# )


## -----------------------------------------------------------------------------
#| eval: false
# ds_alert("Informational message.", variant = "info")
# ds_alert("Operation succeeded.",   variant = "success")
# ds_alert("Review before saving.",  variant = "warning")
# ds_alert("Something went wrong.",  variant = "danger")
# 
# ds_spinner(title = "Loading…", size = "md")
# 
# ds_skeleton(variant = "text",      width = "100%")
# ds_skeleton(variant = "circle",    width = "48px", height = "48px")
# ds_skeleton(variant = "rectangle", width = "200px", height = "80px")
# 
# ds_badge_position(
#   ds_button("Inbox", variant = "secondary"),
#   ds_badge(count = 4, color = "danger")
# )


## -----------------------------------------------------------------------------
#| eval: false
# # Initials
# ds_avatar("AB", size = "sm")
# ds_avatar("CD", size = "md")
# ds_avatar("EF", size = "lg")
# 
# # Image
# ds_avatar(
#   tags$img(src = "profile.jpg", alt = "Alice B."),
#   size = "lg"
# )
# 
# # Group several avatars in a stack
# ds_avatar_stack(
#   ds_avatar("AB"),
#   ds_avatar("CD"),
#   ds_avatar("EF"),
#   ds_avatar("GH")
# )


## -----------------------------------------------------------------------------
#| eval: false
# ds_chip("React", selected = TRUE)
# ds_chip("Vue")
# ds_chip("Angular")
# ds_chip("Svelte")


## -----------------------------------------------------------------------------
#| eval: false
# # UI
# ds_chip_group(
#   "languages",
#   ds_chip("R",      value = "r",      selected = TRUE),
#   ds_chip("Python", value = "python"),
#   ds_chip("Julia",  value = "julia")
# )
# 
# # Server
# observeEvent(input$languages, {
#   cat("Selected:", paste(input$languages, collapse = ", "), "\n")
# })


## -----------------------------------------------------------------------------
#| eval: false
# ds_tooltip(
#   ds_button("Delete", variant = "danger"),
#   text      = "Permanently removes the record",
#   placement = "top"    # "top", "bottom", "left", "right"
# )
# 
# ds_tooltip(
#   ds_badge(count = 12),
#   text = "Unread notifications"
# )


## -----------------------------------------------------------------------------
#| eval: false
# server <- function(input, output, session) {
#   observeEvent(input$reset, {
#     update_ds_input(session,    "name",    value = "")
#     update_ds_checkbox(session, "agree",   value = FALSE)
#     update_ds_select(session,   "country", value = "no")
#     update_ds_tabs(session,     "my_tabs", selected = "overview")
#     update_ds_pagination(session, "pager", current = 1)
#   })
# }


## -----------------------------------------------------------------------------
#| eval: false
# # UI
# ds_button("Open", inputId = "open_dlg")
# ds_dialog(
#   id = "my-dialog",
#   ds_paragraph("Are you sure?"),
#   ds_button("Confirm", inputId = "btn_confirm"),
#   ds_button("Cancel",  inputId = "btn_cancel", variant = "secondary")
# )
# 
# # Server
# observeEvent(input$open_dlg,   show_ds_dialog("my-dialog"))
# observeEvent(input$btn_cancel, hide_ds_dialog("my-dialog"))
# observeEvent(input$btn_confirm, {
#   hide_ds_dialog("my-dialog")
#   # act on confirmation
# })


## -----------------------------------------------------------------------------
#| eval: false
# ui <- bslib::page_fluid(
#   use_designsystemet(),
# 
#   bslib::layout_sidebar(
#     sidebar = bslib::sidebar(
#       title    = "Controls",
#       position = "right",
#       width    = 280,
#       verbatimTextOutput("values")
#     ),
# 
#     # Main content
#     ds_tabs("tabs",
#       ds_tablist(
#         ds_tab("Form",   value = "form",   selected = TRUE),
#         ds_tab("Result", value = "result")
#       ),
#       ds_tabpanel(value = "form",
#         ds_field(ds_label("Name", `for` = "nm"), ds_input("nm")),
#         ds_button("Submit", inputId = "go")
#       ),
#       ds_tabpanel(value = "result",
#         verbatimTextOutput("out")
#       )
#     )
#   )
# )


## -----------------------------------------------------------------------------
#| eval: false
# # Minimal form example
# shiny::runApp(system.file("examples/basic", package = "shinyds"))
# 
# # Data visualisation with tabs and layout_sidebar
# shiny::runApp(system.file("examples/faithful", package = "shinyds"))
# 
# # Full component reference
# shiny::runApp(system.file("examples/showcase", package = "shinyds"))

