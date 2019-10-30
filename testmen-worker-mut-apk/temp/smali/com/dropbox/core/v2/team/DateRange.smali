.class Lcom/dropbox/core/v2/team/DateRange;
.super Ljava/lang/Object;
.source "DateRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/DateRange$Serializer;,
        Lcom/dropbox/core/v2/team/DateRange$Builder;
    }
.end annotation


# instance fields
.field protected final endDate:Ljava/util/Date;

.field protected final startDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0, v0}, Lcom/dropbox/core/v2/team/DateRange;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 1
    .param p1, "startDate"    # Ljava/util/Date;
    .param p2, "endDate"    # Ljava/util/Date;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/team/DateRange;->startDate:Ljava/util/Date;

    .line 40
    invoke-static {p2}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/team/DateRange;->endDate:Ljava/util/Date;

    .line 41
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/team/DateRange$Builder;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/dropbox/core/v2/team/DateRange$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/DateRange$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    if-ne p1, p0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v1

    .line 142
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 143
    check-cast v0, Lcom/dropbox/core/v2/team/DateRange;

    .line 144
    .local v0, "other":Lcom/dropbox/core/v2/team/DateRange;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/DateRange;->startDate:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/DateRange;->startDate:Ljava/util/Date;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/DateRange;->startDate:Ljava/util/Date;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/DateRange;->startDate:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/DateRange;->startDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/DateRange;->endDate:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/DateRange;->endDate:Ljava/util/Date;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/DateRange;->endDate:Ljava/util/Date;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/DateRange;->endDate:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/DateRange;->endDate:Ljava/util/Date;

    .line 145
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/DateRange;
    :cond_4
    move v1, v2

    .line 149
    goto :goto_0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DateRange;->endDate:Ljava/util/Date;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DateRange;->startDate:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 129
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/DateRange;->startDate:Ljava/util/Date;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/DateRange;->endDate:Ljava/util/Date;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 133
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lcom/dropbox/core/v2/team/DateRange$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DateRange$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/DateRange$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lcom/dropbox/core/v2/team/DateRange$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DateRange$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/DateRange$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
