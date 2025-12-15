library(tidyverse)

birds <- read.csv("data/wetland_birds.csv", stringsAsFactors = FALSE)

glimpse(birds)

unique(birds$season_survey)

birds %>% count(species_common) %>% arrange(desc(n))
birds %>% count(habitat_type)
birds %>% count(detection)

birds %>%
  group_by(season_survey) %>%
  summarise(species_richness = n_distinct(species_common))

birds %>%
  group_by(season_survey) %>%
  summarise(total_abundance = sum(min_count))

birds %>%
  group_by(season_survey, habitat_type) %>%
  summarise(
    species_richness = n_distinct(species_common),
    total_abundance = sum(min_count),
    .groups = "drop"
  )

ggplot(
  birds %>% group_by(season_survey) %>% summarise(richness = n_distinct(species_common)),
  aes(x = season_survey, y = richness)
) +
  geom_col() +
  labs(
    title = "Wetland Bird Species Richness by Season",
    x = "Season",
    y = "Species richness"
  )

ggplot(
  birds %>% group_by(season_survey, bird_group) %>% summarise(total = sum(min_count)),
  aes(x = bird_group, y = total, fill = season_survey)
) +
  geom_col(position = "dodge") +
  coord_flip()