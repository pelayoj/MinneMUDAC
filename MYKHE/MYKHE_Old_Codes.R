final1 <- final[final$YEAR=="2016"|final$YEAR == "2014"|final$YEAR=="2012"|final$YEAR=="2010", ]

ggplot(final1, aes(x= SOCIALCAP.assn2014, y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(YEAR))+ geom_smooth(method=lm)
ggplot(final1, aes(x= SOCIALCAP.assn2014, y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(PresYear))+ geom_smooth(method=lm)

ggplot(final1, aes(x= log(SOCIALCAP.Religious2014), y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(YEAR)) + geom_smooth(method=lm)
ggplot(final1, aes(x= log(SOCIALCAP.Religious2014), y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(PresYear)) + geom_smooth(method=lm)

ggplot(final1, aes(x= log(SOCIALCAP.Civic2014), y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(YEAR)) + geom_smooth(method=lm)
ggplot(final1, aes(x= log(SOCIALCAP.Civic2014), y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(PresYear)) + geom_smooth(method=lm)

ggplot(final1, aes(x= log(SOCIALCAP.Business2014), y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(YEAR)) + geom_smooth(method=lm)
ggplot(final1, aes(x= log(SOCIALCAP.Business2014), y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(PresYear)) + geom_smooth(method=lm)

ggplot(final1, aes(x= log(SOCIALCAP.Political2014), y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(YEAR)) + geom_smooth(method=lm)
ggplot(final1, aes(x= log(SOCIALCAP.Political2014), y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(PresYear)) + geom_smooth(method=lm)

ggplot(final1, aes(x= log(SOCIALCAP.Professional2014), y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(YEAR)) + geom_smooth(method=lm)
ggplot(final1, aes(x= log(SOCIALCAP.Professional2014), y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(PresYear)) + geom_smooth(method=lm)

ggplot(final1, aes(x= log(SOCIALCAP.Labor2014), y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(YEAR)) + geom_smooth(method=lm)
ggplot(final1, aes(x= log(SOCIALCAP.Labor2014), y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(PresYear)) + geom_smooth(method=lm)

ggplot(final1, aes(x= log(SOCIALCAP.Bowling2014), y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(YEAR)) + geom_smooth(method=lm)
ggplot(final1, aes(x= log(SOCIALCAP.Bowling2014), y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(PresYear)) + geom_smooth(method=lm)

ggplot(final1, aes(x= log(SOCIALCAP.Recreational2014), y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(YEAR)) + geom_smooth(method=lm)
ggplot(final1, aes(x= log(SOCIALCAP.Recreational2014), y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(PresYear)) + geom_smooth(method=lm)

ggplot(final1, aes(x= log(SOCIALCAP.Golf2014), y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(YEAR)) + geom_smooth(method=lm)
ggplot(final1, aes(x= log(SOCIALCAP.Golf2014), y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(PresYear)) + geom_smooth(method=lm)

ggplot(final1, aes(x= log(SOCIALCAP.nccs2014), y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(YEAR)) + geom_smooth(method=lm)
ggplot(final1, aes(x= log(SOCIALCAP.nccs2014), y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(PresYear)) + geom_smooth(method=lm)

ggplot(final1, aes(x= log(SOCIALCAP.sk2014), y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(YEAR)) + geom_smooth(method=lm)
ggplot(final1, aes(x= log(SOCIALCAP.sk2014), y= VOTEPERCENT)) + 
  geom_point() + facet_wrap(~as.factor(PresYear)) + geom_smooth(method=lm)

```

# ggplot(final, aes(x= log(SOCIALCAP.Religious), y= VOTEPERCENT)) + 
#   geom_point() + facet_wrap(~as.factor(YEAR)) + geom_smooth(method=lm)
# ggplot(final, aes(x= log(SOCIALCAP.Religious), y= VOTEPERCENT)) + 
#   geom_point() + facet_wrap(~as.factor(PresYear)) + geom_smooth(method=lm)
# 
# ggplot(final, aes(x= log(SOCIALCAP.Civic), y= VOTEPERCENT)) + 
#   geom_point() + facet_wrap(~as.factor(YEAR)) + geom_smooth(method=lm)
# ggplot(final, aes(x= log(SOCIALCAP.Civic), y= VOTEPERCENT)) + 
#   geom_point() + facet_wrap(~as.factor(PresYear)) + geom_smooth(method=lm)
# 
# ggplot(final, aes(x= log(SOCIALCAP.Business), y= VOTEPERCENT)) + 
#   geom_point() + facet_wrap(~as.factor(YEAR)) + geom_smooth(method=lm)
# ggplot(final, aes(x= log(SOCIALCAP.Business), y= VOTEPERCENT)) + 
#   geom_point() + facet_wrap(~as.factor(PresYear)) + geom_smooth(method=lm)
# 
# ggplot(final, aes(x= log(SOCIALCAP.Political), y= VOTEPERCENT)) + 
#   geom_point() + facet_wrap(~as.factor(YEAR)) + geom_smooth(method=lm)
# ggplot(final, aes(x= log(SOCIALCAP.Political), y= VOTEPERCENT)) + 
#   geom_point() + facet_wrap(~as.factor(PresYear)) + geom_smooth(method=lm)
# 
# ggplot(final, aes(x= log(SOCIALCAP.Professional), y= VOTEPERCENT)) + 
#   geom_point() + facet_wrap(~as.factor(YEAR)) + geom_smooth(method=lm)
# ggplot(final, aes(x= log(SOCIALCAP.Professional), y= VOTEPERCENT)) + 
#   geom_point() + facet_wrap(~as.factor(PresYear)) + geom_smooth(method=lm)
# 
# ggplot(final, aes(x= log(SOCIALCAP.Labor), y= VOTEPERCENT)) + 
#   geom_point() + facet_wrap(~as.factor(YEAR)) + geom_smooth(method=lm)
# ggplot(final, aes(x= log(SOCIALCAP.Labor), y= VOTEPERCENT)) + 
#   geom_point() + facet_wrap(~as.factor(PresYear)) + geom_smooth(method=lm)
# 
# ggplot(final, aes(x= log(SOCIALCAP.Bowling), y= VOTEPERCENT)) + 
#   geom_point() + facet_wrap(~as.factor(YEAR)) + geom_smooth(method=lm)
# ggplot(final, aes(x= log(SOCIALCAP.Bowling), y= VOTEPERCENT)) + 
#   geom_point() + facet_wrap(~as.factor(PresYear)) + geom_smooth(method=lm)
# 
# ggplot(final, aes(x= log(SOCIALCAP.Recreational), y= VOTEPERCENT)) + 
#   geom_point() + facet_wrap(~as.factor(YEAR)) + geom_smooth(method=lm)
# ggplot(final, aes(x= log(SOCIALCAP.Recreational), y= VOTEPERCENT)) + 
#   geom_point() + facet_wrap(~as.factor(PresYear)) + geom_smooth(method=lm)
# 
# ggplot(final, aes(x= log(SOCIALCAP.Golf), y= VOTEPERCENT)) + 
#   geom_point() + facet_wrap(~as.factor(YEAR)) + geom_smooth(method=lm)
# ggplot(final, aes(x= log(SOCIALCAP.Golf), y= VOTEPERCENT)) + 
#   geom_point() + facet_wrap(~as.factor(PresYear)) + geom_smooth(method=lm)
# 
# ggplot(final, aes(x= log(SOCIALCAP.nccs), y= VOTEPERCENT)) + 
#   geom_point() + facet_wrap(~as.factor(YEAR)) + geom_smooth(method=lm)
# ggplot(final, aes(x= log(SOCIALCAP.nccs), y= VOTEPERCENT)) + 
#   geom_point() + facet_wrap(~as.factor(PresYear)) + geom_smooth(method=lm)
# 
# ggplot(final, aes(x= log(SOCIALCAP.sk), y= VOTEPERCENT)) + 
#   geom_point() + facet_wrap(~as.factor(YEAR)) + geom_smooth(method=lm)
# ggplot(final, aes(x= log(SOCIALCAP.sk), y= VOTEPERCENT)) + 
#   geom_point() + facet_wrap(~as.factor(PresYear)) + geom_smooth(method=lm)