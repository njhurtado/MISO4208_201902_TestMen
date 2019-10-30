.class public Lcom/dropbox/core/v2/team/GetMembershipReport;
.super Lcom/dropbox/core/v2/team/BaseDfbReport;
.source "GetMembershipReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GetMembershipReport$Serializer;
    }
.end annotation


# instance fields
.field protected final licenses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final membersJoined:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final pendingInvites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final suspendedMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final teamSize:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "startDate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "teamSize":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "pendingInvites":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p4, "membersJoined":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p5, "suspendedMembers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p6, "licenses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/team/BaseDfbReport;-><init>(Ljava/lang/String;)V

    .line 58
    if-nez p2, :cond_0

    .line 59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'teamSize\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 62
    .local v0, "x":Ljava/lang/Long;
    if-nez v0, :cond_1

    .line 63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'teamSize\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    .end local v0    # "x":Ljava/lang/Long;
    :cond_2
    iput-object p2, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->teamSize:Ljava/util/List;

    .line 67
    if-nez p3, :cond_3

    .line 68
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'pendingInvites\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 71
    .restart local v0    # "x":Ljava/lang/Long;
    if-nez v0, :cond_4

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'pendingInvites\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    .end local v0    # "x":Ljava/lang/Long;
    :cond_5
    iput-object p3, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->pendingInvites:Ljava/util/List;

    .line 76
    if-nez p4, :cond_6

    .line 77
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'membersJoined\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_6
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 80
    .restart local v0    # "x":Ljava/lang/Long;
    if-nez v0, :cond_7

    .line 81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'membersJoined\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    .end local v0    # "x":Ljava/lang/Long;
    :cond_8
    iput-object p4, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->membersJoined:Ljava/util/List;

    .line 85
    if-nez p5, :cond_9

    .line 86
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'suspendedMembers\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_9
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 89
    .restart local v0    # "x":Ljava/lang/Long;
    if-nez v0, :cond_a

    .line 90
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'suspendedMembers\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    .end local v0    # "x":Ljava/lang/Long;
    :cond_b
    iput-object p5, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->suspendedMembers:Ljava/util/List;

    .line 94
    if-nez p6, :cond_c

    .line 95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'licenses\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_c
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 98
    .restart local v0    # "x":Ljava/lang/Long;
    if-nez v0, :cond_d

    .line 99
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'licenses\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    .end local v0    # "x":Ljava/lang/Long;
    :cond_e
    iput-object p6, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->licenses:Ljava/util/List;

    .line 103
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    if-ne p1, p0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v1

    .line 178
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v0, p1

    .line 179
    check-cast v0, Lcom/dropbox/core/v2/team/GetMembershipReport;

    .line 180
    .local v0, "other":Lcom/dropbox/core/v2/team/GetMembershipReport;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->startDate:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetMembershipReport;->startDate:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->startDate:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetMembershipReport;->startDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->teamSize:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetMembershipReport;->teamSize:Ljava/util/List;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->teamSize:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetMembershipReport;->teamSize:Ljava/util/List;

    .line 181
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->pendingInvites:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetMembershipReport;->pendingInvites:Ljava/util/List;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->pendingInvites:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetMembershipReport;->pendingInvites:Ljava/util/List;

    .line 182
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->membersJoined:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetMembershipReport;->membersJoined:Ljava/util/List;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->membersJoined:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetMembershipReport;->membersJoined:Ljava/util/List;

    .line 183
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->suspendedMembers:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetMembershipReport;->suspendedMembers:Ljava/util/List;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->suspendedMembers:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetMembershipReport;->suspendedMembers:Ljava/util/List;

    .line 184
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->licenses:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetMembershipReport;->licenses:Ljava/util/List;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->licenses:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GetMembershipReport;->licenses:Ljava/util/List;

    .line 185
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_7
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/GetMembershipReport;
    :cond_8
    move v1, v2

    .line 189
    goto :goto_0
.end method

.method public getLicenses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->licenses:Ljava/util/List;

    return-object v0
.end method

.method public getMembersJoined()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->membersJoined:Ljava/util/List;

    return-object v0
.end method

.method public getPendingInvites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->pendingInvites:Ljava/util/List;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSuspendedMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->suspendedMembers:Ljava/util/List;

    return-object v0
.end method

.method public getTeamSize()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->teamSize:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 161
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->teamSize:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->pendingInvites:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->membersJoined:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->suspendedMembers:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GetMembershipReport;->licenses:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 168
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/team/BaseDfbReport;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 169
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/dropbox/core/v2/team/GetMembershipReport$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GetMembershipReport$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GetMembershipReport$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    sget-object v0, Lcom/dropbox/core/v2/team/GetMembershipReport$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GetMembershipReport$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GetMembershipReport$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
