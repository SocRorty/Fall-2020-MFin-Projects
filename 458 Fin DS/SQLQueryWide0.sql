use rcv1
--select news.id, article, topics.id_cat, T.cat, h1.h1, h2.h2, h3.h3, h4.h4, h5.h5 from news
select top 500000 news_test.id, article, topics.id_cat, T.cat, h1.h1, h2.h2, h3.h3, h4.h4, h5.h5 from news_test
--inner join news_topics T on (T.id = news.id)
inner join news_topics T on (T.id = news_test.id)
inner join topics on (T.cat = topics.child)
left join dbo.h1 h1 on (h1 = T.cat)
left join dbo.h2 h2 on (h2 = T.cat)
left join dbo.h3 h3 on (h3 = T.cat)
left join dbo.h4 h4 on (h4 = T.cat)
left join dbo.h5 h5 on (h5 = T.cat)
--- where h2.h2 is not Null