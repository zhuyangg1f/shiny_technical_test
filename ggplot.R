# Starter ggplot function

plot_clicks <- function(ad_clicks){
    
    require(ggplot2)
    require(dplyr)
    
    ad_clicks %>% 
        dplyr::group_by(name, day) %>% 
        dplyr::summarise(clicks = sum(clicks)) %>% 
        dplyr::ungroup() %>% 
        ggplot2::ggplot(ggplot2::aes(x = day,
                                     y = clicks,
                                     col = name)) +
        ggplot2::geom_line(size = 1.2) + 
        ggplot2::geom_point(size = 6) +
        ggplot2::scale_x_date(date_breaks = "1 week",
                              date_labels = "%d%b%Y") + 
        ggplot2::labs(
            x = "",
            y = "",
            title = ""
        ) + 
        ggplot2::guides(col = ggplot2::guide_legend(title = "")) + 
        ggplot2::theme(
            legend.position = "bottom"
        )
    
}