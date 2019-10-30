.class public final Lcom/dropbox/core/v2/team/MemberAddResult;
.super Ljava/lang/Object;
.source "MemberAddResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;,
        Lcom/dropbox/core/v2/team/MemberAddResult$Tag;
    }
.end annotation


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field private final duplicateExternalMemberIdValue:Ljava/lang/String;

.field private final duplicateMemberPersistentIdValue:Ljava/lang/String;

.field private final freeTeamMemberLimitReachedValue:Ljava/lang/String;

.field private final persistentIdDisabledValue:Ljava/lang/String;

.field private final successValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

.field private final teamLicenseLimitValue:Ljava/lang/String;

.field private final userAlreadyOnTeamValue:Ljava/lang/String;

.field private final userAlreadyPairedValue:Ljava/lang/String;

.field private final userCreationFailedValue:Ljava/lang/String;

.field private final userMigrationFailedValue:Ljava/lang/String;

.field private final userOnAnotherTeamValue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Lcom/dropbox/core/v2/team/TeamMemberInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/MemberAddResult$Tag;
    .param p2, "successValue"    # Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .param p3, "teamLicenseLimitValue"    # Ljava/lang/String;
    .param p4, "freeTeamMemberLimitReachedValue"    # Ljava/lang/String;
    .param p5, "userAlreadyOnTeamValue"    # Ljava/lang/String;
    .param p6, "userOnAnotherTeamValue"    # Ljava/lang/String;
    .param p7, "userAlreadyPairedValue"    # Ljava/lang/String;
    .param p8, "userMigrationFailedValue"    # Ljava/lang/String;
    .param p9, "duplicateExternalMemberIdValue"    # Ljava/lang/String;
    .param p10, "duplicateMemberPersistentIdValue"    # Ljava/lang/String;
    .param p11, "persistentIdDisabledValue"    # Ljava/lang/String;
    .param p12, "userCreationFailedValue"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 168
    iput-object p2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->successValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    .line 169
    iput-object p3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->teamLicenseLimitValue:Ljava/lang/String;

    .line 170
    iput-object p4, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->freeTeamMemberLimitReachedValue:Ljava/lang/String;

    .line 171
    iput-object p5, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyOnTeamValue:Ljava/lang/String;

    .line 172
    iput-object p6, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userOnAnotherTeamValue:Ljava/lang/String;

    .line 173
    iput-object p7, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyPairedValue:Ljava/lang/String;

    .line 174
    iput-object p8, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userMigrationFailedValue:Ljava/lang/String;

    .line 175
    iput-object p9, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateExternalMemberIdValue:Ljava/lang/String;

    .line 176
    iput-object p10, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateMemberPersistentIdValue:Ljava/lang/String;

    .line 177
    iput-object p11, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->persistentIdDisabledValue:Ljava/lang/String;

    .line 178
    iput-object p12, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userCreationFailedValue:Ljava/lang/String;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/MemberAddResult;)Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/MemberAddResult;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->successValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/MemberAddResult;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->teamLicenseLimitValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/MemberAddResult;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userCreationFailedValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/MemberAddResult;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->freeTeamMemberLimitReachedValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/MemberAddResult;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyOnTeamValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/MemberAddResult;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userOnAnotherTeamValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/MemberAddResult;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyPairedValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/MemberAddResult;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userMigrationFailedValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/MemberAddResult;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateExternalMemberIdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/MemberAddResult;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateMemberPersistentIdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/MemberAddResult;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->persistentIdDisabledValue:Ljava/lang/String;

    return-object v0
.end method

.method public static duplicateExternalMemberId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 13
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 634
    if-nez p0, :cond_0

    .line 635
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 638
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_1
    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 641
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_EXTERNAL_MEMBER_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, p0

    move-object v10, v2

    move-object v11, v2

    move-object v12, v2

    invoke-direct/range {v0 .. v12}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Lcom/dropbox/core/v2/team/TeamMemberInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static duplicateMemberPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 13
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 695
    if-nez p0, :cond_0

    .line 696
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 699
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_1
    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 702
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_MEMBER_PERSISTENT_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v10, p0

    move-object v11, v2

    move-object v12, v2

    invoke-direct/range {v0 .. v12}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Lcom/dropbox/core/v2/team/TeamMemberInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static freeTeamMemberLimitReached(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 13
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 332
    if-nez p0, :cond_0

    .line 333
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_1
    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->FREE_TEAM_MEMBER_LIMIT_REACHED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    move-object v3, v2

    move-object v4, p0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    move-object v11, v2

    move-object v12, v2

    invoke-direct/range {v0 .. v12}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Lcom/dropbox/core/v2/team/TeamMemberInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static persistentIdDisabled(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 13
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 756
    if-nez p0, :cond_0

    .line 757
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 760
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :cond_1
    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 763
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 765
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->PERSISTENT_ID_DISABLED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    move-object v11, p0

    move-object v12, v2

    invoke-direct/range {v0 .. v12}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Lcom/dropbox/core/v2/team/TeamMemberInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static success(Lcom/dropbox/core/v2/team/TeamMemberInfo;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 13
    .param p0, "value"    # Lcom/dropbox/core/v2/team/TeamMemberInfo;

    .prologue
    const/4 v3, 0x0

    .line 221
    if-nez p0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    move-object v12, v3

    invoke-direct/range {v0 .. v12}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Lcom/dropbox/core/v2/team/TeamMemberInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static teamLicenseLimit(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 13
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 273
    if-nez p0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_1
    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    move-object v3, p0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    move-object v11, v2

    move-object v12, v2

    invoke-direct/range {v0 .. v12}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Lcom/dropbox/core/v2/team/TeamMemberInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static userAlreadyOnTeam(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 13
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 393
    if-nez p0, :cond_0

    .line 394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_1
    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 400
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_ON_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    move-object v3, v2

    move-object v4, v2

    move-object v5, p0

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    move-object v11, v2

    move-object v12, v2

    invoke-direct/range {v0 .. v12}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Lcom/dropbox/core/v2/team/TeamMemberInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static userAlreadyPaired(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 13
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 516
    if-nez p0, :cond_0

    .line 517
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 520
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_1
    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 523
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_PAIRED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, p0

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    move-object v11, v2

    move-object v12, v2

    invoke-direct/range {v0 .. v12}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Lcom/dropbox/core/v2/team/TeamMemberInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static userCreationFailed(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 13
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 816
    if-nez p0, :cond_0

    .line 817
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 820
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_1
    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 823
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_CREATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    move-object v11, v2

    move-object v12, p0

    invoke-direct/range {v0 .. v12}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Lcom/dropbox/core/v2/team/TeamMemberInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static userMigrationFailed(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 13
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 574
    if-nez p0, :cond_0

    .line 575
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 578
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_1
    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 581
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_MIGRATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, p0

    move-object v9, v2

    move-object v10, v2

    move-object v11, v2

    move-object v12, v2

    invoke-direct/range {v0 .. v12}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Lcom/dropbox/core/v2/team/TeamMemberInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static userOnAnotherTeam(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 13
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 456
    if-nez p0, :cond_0

    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 460
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_1
    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 463
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ON_ANOTHER_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, p0

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    move-object v11, v2

    move-object v12, v2

    invoke-direct/range {v0 .. v12}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Lcom/dropbox/core/v2/team/TeamMemberInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 868
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 904
    :cond_0
    :goto_0
    return v1

    .line 871
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 872
    check-cast v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    .line 873
    .local v0, "other":Lcom/dropbox/core/v2/team/MemberAddResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v3, v4, :cond_0

    .line 876
    sget-object v3, Lcom/dropbox/core/v2/team/MemberAddResult$1;->$SwitchMap$com$dropbox$core$v2$team$MemberAddResult$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 878
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->successValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->successValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->successValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->successValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/TeamMemberInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 880
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->teamLicenseLimitValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->teamLicenseLimitValue:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->teamLicenseLimitValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->teamLicenseLimitValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 882
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->freeTeamMemberLimitReachedValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->freeTeamMemberLimitReachedValue:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->freeTeamMemberLimitReachedValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->freeTeamMemberLimitReachedValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 884
    :pswitch_3
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyOnTeamValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyOnTeamValue:Ljava/lang/String;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyOnTeamValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyOnTeamValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .line 886
    :pswitch_4
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userOnAnotherTeamValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->userOnAnotherTeamValue:Ljava/lang/String;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userOnAnotherTeamValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->userOnAnotherTeamValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_6
    move v1, v2

    goto :goto_0

    .line 888
    :pswitch_5
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyPairedValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyPairedValue:Ljava/lang/String;

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyPairedValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyPairedValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_7
    move v1, v2

    goto/16 :goto_0

    .line 890
    :pswitch_6
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userMigrationFailedValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->userMigrationFailedValue:Ljava/lang/String;

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userMigrationFailedValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->userMigrationFailedValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_8
    move v1, v2

    goto/16 :goto_0

    .line 892
    :pswitch_7
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateExternalMemberIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateExternalMemberIdValue:Ljava/lang/String;

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateExternalMemberIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateExternalMemberIdValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_9
    move v1, v2

    goto/16 :goto_0

    .line 894
    :pswitch_8
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateMemberPersistentIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateMemberPersistentIdValue:Ljava/lang/String;

    if-eq v3, v4, :cond_a

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateMemberPersistentIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateMemberPersistentIdValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_a
    move v1, v2

    goto/16 :goto_0

    .line 896
    :pswitch_9
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->persistentIdDisabledValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->persistentIdDisabledValue:Ljava/lang/String;

    if-eq v3, v4, :cond_b

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->persistentIdDisabledValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->persistentIdDisabledValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_b
    move v1, v2

    goto/16 :goto_0

    .line 898
    :pswitch_a
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userCreationFailedValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->userCreationFailedValue:Ljava/lang/String;

    if-eq v3, v4, :cond_c

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userCreationFailedValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->userCreationFailedValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_c
    move v1, v2

    goto/16 :goto_0

    .line 876
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public getDuplicateExternalMemberIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 660
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_EXTERNAL_MEMBER_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v0, v1, :cond_0

    .line 661
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.DUPLICATE_EXTERNAL_MEMBER_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateExternalMemberIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public getDuplicateMemberPersistentIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 721
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_MEMBER_PERSISTENT_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v0, v1, :cond_0

    .line 722
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.DUPLICATE_MEMBER_PERSISTENT_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateMemberPersistentIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public getFreeTeamMemberLimitReachedValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->FREE_TEAM_MEMBER_LIMIT_REACHED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v0, v1, :cond_0

    .line 358
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FREE_TEAM_MEMBER_LIMIT_REACHED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->freeTeamMemberLimitReachedValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPersistentIdDisabledValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 782
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->PERSISTENT_ID_DISABLED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v0, v1, :cond_0

    .line 783
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PERSISTENT_ID_DISABLED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->persistentIdDisabledValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccessValue()Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v0, v1, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SUCCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->successValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    return-object v0
.end method

.method public getTeamLicenseLimitValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v0, v1, :cond_0

    .line 298
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TEAM_LICENSE_LIMIT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->teamLicenseLimitValue:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAlreadyOnTeamValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_ON_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v0, v1, :cond_0

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USER_ALREADY_ON_TEAM, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyOnTeamValue:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAlreadyPairedValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_PAIRED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v0, v1, :cond_0

    .line 541
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USER_ALREADY_PAIRED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyPairedValue:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCreationFailedValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 841
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_CREATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v0, v1, :cond_0

    .line 842
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USER_CREATION_FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userCreationFailedValue:Ljava/lang/String;

    return-object v0
.end method

.method public getUserMigrationFailedValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 599
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_MIGRATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v0, v1, :cond_0

    .line 600
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USER_MIGRATION_FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userMigrationFailedValue:Ljava/lang/String;

    return-object v0
.end method

.method public getUserOnAnotherTeamValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 482
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ON_ANOTHER_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v0, v1, :cond_0

    .line 483
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USER_ON_ANOTHER_TEAM, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userOnAnotherTeamValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 849
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->successValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->teamLicenseLimitValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->freeTeamMemberLimitReachedValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyOnTeamValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userOnAnotherTeamValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyPairedValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userMigrationFailedValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateExternalMemberIdValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateMemberPersistentIdValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->persistentIdDisabledValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userCreationFailedValue:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 863
    .local v0, "hash":I
    return v0
.end method

.method public isDuplicateExternalMemberId()Z
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_EXTERNAL_MEMBER_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDuplicateMemberPersistentId()Z
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_MEMBER_PERSISTENT_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFreeTeamMemberLimitReached()Z
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->FREE_TEAM_MEMBER_LIMIT_REACHED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistentIdDisabled()Z
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->PERSISTENT_ID_DISABLED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTeamLicenseLimit()Z
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserAlreadyOnTeam()Z
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_ON_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserAlreadyPaired()Z
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_PAIRED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserCreationFailed()Z
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_CREATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserMigrationFailed()Z
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_MIGRATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserOnAnotherTeam()Z
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ON_ANOTHER_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/MemberAddResult$Tag;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 910
    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 922
    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
