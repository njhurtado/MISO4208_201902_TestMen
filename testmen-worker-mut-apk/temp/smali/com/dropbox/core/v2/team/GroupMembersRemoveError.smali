.class public final Lcom/dropbox/core/v2/team/GroupMembersRemoveError;
.super Ljava/lang/Object;
.source "GroupMembersRemoveError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;,
        Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;
    }
.end annotation


# static fields
.field public static final GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

.field public static final GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

.field public static final MEMBER_NOT_IN_GROUP:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

.field public static final OTHER:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

.field public static final SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

.field private final membersNotInTeamValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final usersNotFoundValue:Ljava/util/List;
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
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->MEMBER_NOT_IN_GROUP:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->MEMBER_NOT_IN_GROUP:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;",
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
    .line 109
    .local p2, "membersNotInTeamValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "usersNotFoundValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    .line 111
    iput-object p2, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->membersNotInTeamValue:Ljava/util/List;

    .line 112
    iput-object p3, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->usersNotFoundValue:Ljava/util/List;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/GroupMembersRemoveError;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->membersNotInTeamValue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/GroupMembersRemoveError;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->usersNotFoundValue:Ljava/util/List;

    return-object v0
.end method

.method public static membersNotInTeam(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersRemoveError;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 212
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Value is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
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

    .line 215
    .local v0, "x":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 216
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    .end local v0    # "x":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    sget-object v2, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public static usersNotFound(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersRemoveError;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 267
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Value is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
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

    .line 270
    .local v0, "x":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 271
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    .end local v0    # "x":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    sget-object v2, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 308
    if-ne p1, p0, :cond_0

    .line 336
    :goto_0
    :pswitch_0
    return v2

    .line 311
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 312
    check-cast v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    .line 313
    .local v0, "other":Lcom/dropbox/core/v2/team/GroupMembersRemoveError;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 314
    goto :goto_0

    .line 316
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$1;->$SwitchMap$com$dropbox$core$v2$team$GroupMembersRemoveError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 332
    goto :goto_0

    .line 328
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->membersNotInTeamValue:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->membersNotInTeamValue:Ljava/util/List;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->membersNotInTeamValue:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->membersNotInTeamValue:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .line 330
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->usersNotFoundValue:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->usersNotFoundValue:Ljava/util/List;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->usersNotFoundValue:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->usersNotFoundValue:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/GroupMembersRemoveError;
    :cond_6
    move v2, v1

    .line 336
    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMembersNotInTeamValue()Ljava/util/List;
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
    .line 234
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-eq v0, v1, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.MEMBERS_NOT_IN_TEAM, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->membersNotInTeamValue:Ljava/util/List;

    return-object v0
.end method

.method public getUsersNotFoundValue()Ljava/util/List;
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
    .line 289
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-eq v0, v1, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USERS_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->usersNotFoundValue:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 297
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->membersNotInTeamValue:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->usersNotFoundValue:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 302
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 303
    return v0
.end method

.method public isGroupNotFound()Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupNotInTeam()Z
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMemberNotInGroup()Z
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->MEMBER_NOT_IN_GROUP:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMembersNotInTeam()Z
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

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
    .line 149
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemManagedGroupDisallowed()Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsersNotFound()Z
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
