.class public final Lcom/dropbox/core/v2/users/SpaceAllocation;
.super Ljava/lang/Object;
.source "SpaceAllocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;,
        Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/users/SpaceAllocation;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

.field private final individualValue:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

.field private final teamValue:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/dropbox/core/v2/users/SpaceAllocation;

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->OTHER:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/users/SpaceAllocation;-><init>(Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;Lcom/dropbox/core/v2/users/TeamSpaceAllocation;)V

    sput-object v0, Lcom/dropbox/core/v2/users/SpaceAllocation;->OTHER:Lcom/dropbox/core/v2/users/SpaceAllocation;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;Lcom/dropbox/core/v2/users/TeamSpaceAllocation;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;
    .param p2, "individualValue"    # Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;
    .param p3, "teamValue"    # Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    .line 83
    iput-object p2, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->individualValue:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    .line 84
    iput-object p3, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->teamValue:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/users/SpaceAllocation;)Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/users/SpaceAllocation;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->individualValue:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/users/SpaceAllocation;)Lcom/dropbox/core/v2/users/TeamSpaceAllocation;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/users/SpaceAllocation;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->teamValue:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    return-object v0
.end method

.method public static individual(Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;)Lcom/dropbox/core/v2/users/SpaceAllocation;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    .prologue
    .line 131
    if-nez p0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/users/SpaceAllocation;

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->INDIVIDUAL:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/users/SpaceAllocation;-><init>(Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;Lcom/dropbox/core/v2/users/TeamSpaceAllocation;)V

    return-object v0
.end method

.method public static team(Lcom/dropbox/core/v2/users/TeamSpaceAllocation;)Lcom/dropbox/core/v2/users/SpaceAllocation;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    .prologue
    .line 179
    if-nez p0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/users/SpaceAllocation;

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->TEAM:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/users/SpaceAllocation;-><init>(Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;Lcom/dropbox/core/v2/users/TeamSpaceAllocation;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 225
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 245
    :cond_0
    :goto_0
    return v1

    .line 228
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/users/SpaceAllocation;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 229
    check-cast v0, Lcom/dropbox/core/v2/users/SpaceAllocation;

    .line 230
    .local v0, "other":Lcom/dropbox/core/v2/users/SpaceAllocation;
    iget-object v3, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    if-ne v3, v4, :cond_0

    .line 233
    sget-object v3, Lcom/dropbox/core/v2/users/SpaceAllocation$1;->$SwitchMap$com$dropbox$core$v2$users$SpaceAllocation$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 235
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->individualValue:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/SpaceAllocation;->individualValue:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->individualValue:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/SpaceAllocation;->individualValue:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 237
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->teamValue:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/SpaceAllocation;->teamValue:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->teamValue:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    iget-object v4, v0, Lcom/dropbox/core/v2/users/SpaceAllocation;->teamValue:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 239
    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getIndividualValue()Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->INDIVIDUAL:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    if-eq v0, v1, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.INDIVIDUAL, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->individualValue:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    return-object v0
.end method

.method public getTeamValue()Lcom/dropbox/core/v2/users/TeamSpaceAllocation;
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->TEAM:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    if-eq v0, v1, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TEAM, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->teamValue:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 215
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->individualValue:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->teamValue:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 220
    .local v0, "hash":I
    return v0
.end method

.method public isIndividual()Z
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->INDIVIDUAL:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->OTHER:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTeam()Z
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->TEAM:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    sget-object v0, Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    sget-object v0, Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
