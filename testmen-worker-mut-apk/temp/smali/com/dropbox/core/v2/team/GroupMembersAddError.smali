.class public final Lcom/dropbox/core/v2/team/GroupMembersAddError;
.super Ljava/lang/Object;
.source "GroupMembersAddError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;,
        Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;
    }
.end annotation


# static fields
.field public static final DUPLICATE_USER:Lcom/dropbox/core/v2/team/GroupMembersAddError;

.field public static final GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError;

.field public static final GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError;

.field public static final OTHER:Lcom/dropbox/core/v2/team/GroupMembersAddError;

.field public static final SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersAddError;

.field public static final USER_MUST_BE_ACTIVE_TO_BE_OWNER:Lcom/dropbox/core/v2/team/GroupMembersAddError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

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

.field private final userCannotBeManagerOfCompanyManagedGroupValue:Ljava/util/List;
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

    .line 85
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    .line 93
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    .line 97
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    .line 102
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->DUPLICATE_USER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->DUPLICATE_USER:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    .line 107
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    .line 112
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USER_MUST_BE_ACTIVE_TO_BE_OWNER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->USER_MUST_BE_ACTIVE_TO_BE_OWNER:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
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
    .line 137
    .local p2, "membersNotInTeamValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "usersNotFoundValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "userCannotBeManagerOfCompanyManagedGroupValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    .line 139
    iput-object p2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->membersNotInTeamValue:Ljava/util/List;

    .line 140
    iput-object p3, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->usersNotFoundValue:Ljava/util/List;

    .line 141
    iput-object p4, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->userCannotBeManagerOfCompanyManagedGroupValue:Ljava/util/List;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/GroupMembersAddError;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/GroupMembersAddError;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->membersNotInTeamValue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/GroupMembersAddError;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/GroupMembersAddError;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->usersNotFoundValue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/team/GroupMembersAddError;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/GroupMembersAddError;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->userCannotBeManagerOfCompanyManagedGroupValue:Ljava/util/List;

    return-object v0
.end method

.method public static membersNotInTeam(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersAddError;"
        }
    .end annotation

    .prologue
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 244
    if-nez p0, :cond_0

    .line 245
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Value is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
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

    .line 248
    .local v0, "x":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 249
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    .end local v0    # "x":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    sget-object v2, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v1, v2, p0, v3, v3}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public static userCannotBeManagerOfCompanyManagedGroup(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersAddError;"
        }
    .end annotation

    .prologue
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 371
    if-nez p0, :cond_0

    .line 372
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Value is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
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

    .line 375
    .local v0, "x":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 376
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    .end local v0    # "x":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    sget-object v2, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v1, v2, v3, v3, p0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public static usersNotFound(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersAddError;"
        }
    .end annotation

    .prologue
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 303
    if-nez p0, :cond_0

    .line 304
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Value is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
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

    .line 307
    .local v0, "x":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 308
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    .end local v0    # "x":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    sget-object v2, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v1, v2, v3, p0, v3}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 415
    if-ne p1, p0, :cond_0

    .line 447
    :goto_0
    :pswitch_0
    return v2

    .line 418
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    if-eqz v3, :cond_8

    move-object v0, p1

    .line 419
    check-cast v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    .line 420
    .local v0, "other":Lcom/dropbox/core/v2/team/GroupMembersAddError;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 421
    goto :goto_0

    .line 423
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/team/GroupMembersAddError$1;->$SwitchMap$com$dropbox$core$v2$team$GroupMembersAddError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 443
    goto :goto_0

    .line 435
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->membersNotInTeamValue:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->membersNotInTeamValue:Ljava/util/List;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->membersNotInTeamValue:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->membersNotInTeamValue:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .line 437
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->usersNotFoundValue:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->usersNotFoundValue:Ljava/util/List;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->usersNotFoundValue:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->usersNotFoundValue:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    move v2, v1

    goto :goto_0

    .line 441
    :pswitch_3
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->userCannotBeManagerOfCompanyManagedGroupValue:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->userCannotBeManagerOfCompanyManagedGroupValue:Ljava/util/List;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->userCannotBeManagerOfCompanyManagedGroupValue:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->userCannotBeManagerOfCompanyManagedGroupValue:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/GroupMembersAddError;
    :cond_8
    move v2, v1

    .line 447
    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
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
    .line 271
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-eq v0, v1, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.MEMBERS_NOT_IN_TEAM, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->membersNotInTeamValue:Ljava/util/List;

    return-object v0
.end method

.method public getUserCannotBeManagerOfCompanyManagedGroupValue()Ljava/util/List;
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
    .line 395
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-eq v0, v1, :cond_0

    .line 396
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->userCannotBeManagerOfCompanyManagedGroupValue:Ljava/util/List;

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
    .line 326
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-eq v0, v1, :cond_0

    .line 327
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USERS_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->usersNotFoundValue:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 403
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->membersNotInTeamValue:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->usersNotFoundValue:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->userCannotBeManagerOfCompanyManagedGroupValue:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 409
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 410
    return v0
.end method

.method public isDuplicateUser()Z
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->DUPLICATE_USER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupNotFound()Z
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

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
    .line 211
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

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
    .line 222
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

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
    .line 178
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

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
    .line 189
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserCannotBeManagerOfCompanyManagedGroup()Z
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserMustBeActiveToBeOwner()Z
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USER_MUST_BE_ACTIVE_TO_BE_OWNER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

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
    .line 285
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 453
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 465
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
