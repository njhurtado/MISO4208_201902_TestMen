.class public final Lcom/dropbox/core/v2/team/GroupsSelector;
.super Ljava/lang/Object;
.source "GroupsSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;,
        Lcom/dropbox/core/v2/team/GroupsSelector$Tag;
    }
.end annotation


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

.field private final groupExternalIdsValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final groupIdsValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/dropbox/core/v2/team/GroupsSelector$Tag;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/GroupsSelector$Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupsSelector$Tag;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, "groupIdsValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "groupExternalIdsValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->_tag:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    .line 64
    iput-object p2, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->groupIdsValue:Ljava/util/List;

    .line 65
    iput-object p3, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->groupExternalIdsValue:Ljava/util/List;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/GroupsSelector;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/GroupsSelector;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->groupIdsValue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/GroupsSelector;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/GroupsSelector;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->groupExternalIdsValue:Ljava/util/List;

    return-object v0
.end method

.method public static groupExternalIds(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupsSelector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupsSelector;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 164
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Value is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    .local v0, "x":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 168
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    .end local v0    # "x":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/dropbox/core/v2/team/GroupsSelector;

    sget-object v2, Lcom/dropbox/core/v2/team/GroupsSelector$Tag;->GROUP_EXTERNAL_IDS:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/dropbox/core/v2/team/GroupsSelector;-><init>(Lcom/dropbox/core/v2/team/GroupsSelector$Tag;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public static groupIds(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupsSelector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupsSelector;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 110
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Value is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    .local v0, "x":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 114
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    .end local v0    # "x":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/dropbox/core/v2/team/GroupsSelector;

    sget-object v2, Lcom/dropbox/core/v2/team/GroupsSelector$Tag;->GROUP_IDS:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/dropbox/core/v2/team/GroupsSelector;-><init>(Lcom/dropbox/core/v2/team/GroupsSelector$Tag;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 204
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 222
    :cond_0
    :goto_0
    return v1

    .line 207
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/team/GroupsSelector;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 208
    check-cast v0, Lcom/dropbox/core/v2/team/GroupsSelector;

    .line 209
    .local v0, "other":Lcom/dropbox/core/v2/team/GroupsSelector;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->_tag:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupsSelector;->_tag:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    if-ne v3, v4, :cond_0

    .line 212
    sget-object v3, Lcom/dropbox/core/v2/team/GroupsSelector$1;->$SwitchMap$com$dropbox$core$v2$team$GroupsSelector$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->_tag:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/team/GroupsSelector$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 214
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->groupIdsValue:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupsSelector;->groupIdsValue:Ljava/util/List;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->groupIdsValue:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupsSelector;->groupIdsValue:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 216
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->groupExternalIdsValue:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupsSelector;->groupExternalIdsValue:Ljava/util/List;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->groupExternalIdsValue:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupsSelector;->groupExternalIdsValue:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getGroupExternalIdsValue()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->_tag:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsSelector$Tag;->GROUP_EXTERNAL_IDS:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    if-eq v0, v1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.GROUP_EXTERNAL_IDS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->_tag:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupsSelector$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->groupExternalIdsValue:Ljava/util/List;

    return-object v0
.end method

.method public getGroupIdsValue()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->_tag:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsSelector$Tag;->GROUP_IDS:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    if-eq v0, v1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.GROUP_IDS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->_tag:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupsSelector$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->groupIdsValue:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 194
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->_tag:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->groupIdsValue:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->groupExternalIdsValue:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 199
    .local v0, "hash":I
    return v0
.end method

.method public isGroupExternalIds()Z
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->_tag:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsSelector$Tag;->GROUP_EXTERNAL_IDS:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupIds()Z
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->_tag:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsSelector$Tag;->GROUP_IDS:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/GroupsSelector$Tag;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->_tag:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    sget-object v0, Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    sget-object v0, Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
