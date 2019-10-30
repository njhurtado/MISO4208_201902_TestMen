.class public Lcom/dropbox/core/v2/team/GetDevicesReport;
.super Lcom/dropbox/core/v2/team/BaseDfbReport;
.source "GetDevicesReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GetDevicesReport$Serializer;
    }
.end annotation


# instance fields
.field protected final active1Day:Lcom/dropbox/core/v2/team/DevicesActive;

.field protected final active28Day:Lcom/dropbox/core/v2/team/DevicesActive;

.field protected final active7Day:Lcom/dropbox/core/v2/team/DevicesActive;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/team/DevicesActive;Lcom/dropbox/core/v2/team/DevicesActive;Lcom/dropbox/core/v2/team/DevicesActive;)V
    .locals 2
    .param p1, "startDate"    # Ljava/lang/String;
    .param p2, "active1Day"    # Lcom/dropbox/core/v2/team/DevicesActive;
    .param p3, "active7Day"    # Lcom/dropbox/core/v2/team/DevicesActive;
    .param p4, "active28Day"    # Lcom/dropbox/core/v2/team/DevicesActive;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/team/BaseDfbReport;-><init>(Ljava/lang/String;)V

    .line 51
    if-nez p2, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'active1Day\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active1Day:Lcom/dropbox/core/v2/team/DevicesActive;

    .line 55
    if-nez p3, :cond_1

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'active7Day\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    iput-object p3, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active7Day:Lcom/dropbox/core/v2/team/DevicesActive;

    .line 59
    if-nez p4, :cond_2

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'active28Day\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_2
    iput-object p4, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active28Day:Lcom/dropbox/core/v2/team/DevicesActive;

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    if-ne p1, p0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 119
    check-cast v0, Lcom/dropbox/core/v2/team/GetDevicesReport;

    .line 120
    .local v0, "other":Lcom/dropbox/core/v2/team/GetDevicesReport;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->startDate:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetDevicesReport;->startDate:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->startDate:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetDevicesReport;->startDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active1Day:Lcom/dropbox/core/v2/team/DevicesActive;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active1Day:Lcom/dropbox/core/v2/team/DevicesActive;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active1Day:Lcom/dropbox/core/v2/team/DevicesActive;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active1Day:Lcom/dropbox/core/v2/team/DevicesActive;

    .line 121
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/DevicesActive;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active7Day:Lcom/dropbox/core/v2/team/DevicesActive;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active7Day:Lcom/dropbox/core/v2/team/DevicesActive;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active7Day:Lcom/dropbox/core/v2/team/DevicesActive;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active7Day:Lcom/dropbox/core/v2/team/DevicesActive;

    .line 122
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/DevicesActive;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active28Day:Lcom/dropbox/core/v2/team/DevicesActive;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active28Day:Lcom/dropbox/core/v2/team/DevicesActive;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active28Day:Lcom/dropbox/core/v2/team/DevicesActive;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active28Day:Lcom/dropbox/core/v2/team/DevicesActive;

    .line 123
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/DevicesActive;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/GetDevicesReport;
    :cond_6
    move v1, v2

    .line 127
    goto :goto_0
.end method

.method public getActive1Day()Lcom/dropbox/core/v2/team/DevicesActive;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active1Day:Lcom/dropbox/core/v2/team/DevicesActive;

    return-object v0
.end method

.method public getActive28Day()Lcom/dropbox/core/v2/team/DevicesActive;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active28Day:Lcom/dropbox/core/v2/team/DevicesActive;

    return-object v0
.end method

.method public getActive7Day()Lcom/dropbox/core/v2/team/DevicesActive;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active7Day:Lcom/dropbox/core/v2/team/DevicesActive;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 103
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active1Day:Lcom/dropbox/core/v2/team/DevicesActive;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active7Day:Lcom/dropbox/core/v2/team/DevicesActive;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active28Day:Lcom/dropbox/core/v2/team/DevicesActive;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 108
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/team/BaseDfbReport;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 109
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/dropbox/core/v2/team/GetDevicesReport$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GetDevicesReport$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GetDevicesReport$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/dropbox/core/v2/team/GetDevicesReport$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GetDevicesReport$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GetDevicesReport$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
