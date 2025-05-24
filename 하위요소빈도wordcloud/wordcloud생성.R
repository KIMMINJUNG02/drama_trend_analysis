install.packages("wordcloud2")
library(wordcloud2)
install.packages("htmlwidgets")
library(htmlwidgets)
install.packages("webshot")
library(webshot)

# 연기
detail_acting <- read.csv("G:/내 드라이브/자기주도연구/세부적 이유 추출/연기/acting_count.csv", check.names = FALSE, fileEncoding = "UTF-8", header = TRUE, sep = ",")
detail_acting

wordcloud_acting <- wordcloud2(detail_acting, color = "random-light", backgroundColor = "white")
wordcloud_acting

# HTML 파일로 먼저 저장
saveWidget(wordcloud_acting, "wordcloud_acting.html", selfcontained = FALSE)


#스토리
detail_story <- read.csv("G:/내 드라이브/자기주도연구/세부적 이유 추출/스토리/story_count.csv", check.names = FALSE, fileEncoding = "UTF-8", header = TRUE, sep = ",")
detail_story

wordcloud_story <- wordcloud2(detail_story, color = "random-light", backgroundColor = "white")
wordcloud_story

# HTML 파일로 먼저 저장
saveWidget(wordcloud_story, "wordcloud_story.html", selfcontained = FALSE)

#캐릭터
detail_character <- read.csv("G:/내 드라이브/자기주도연구/세부적 이유 추출/캐릭터/character_count.csv", check.names = FALSE, fileEncoding = "UTF-8", header = TRUE, sep = ",")
detail_character

wordcloud_character <- wordcloud2(detail_character, color = "random-light", backgroundColor = "white")
wordcloud_character

# HTML 파일로 먼저 저장
saveWidget(wordcloud_character, "wordcloud_character.html", selfcontained = FALSE)