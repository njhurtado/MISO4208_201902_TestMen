.class public final Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
.super Ljava/lang/Object;
.source "AddFolderMemberError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;,
        Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;
    }
.end annotation


# static fields
.field public static final CANT_SHARE_OUTSIDE_TEAM:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

.field public static final EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

.field public static final INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

.field public static final RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

.field public static final TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

.field public static final TOO_MANY_INVITEES:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

.field private final accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

.field private final badMemberValue:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

.field private final tooManyMembersValue:Ljava/lang/Long;

.field private final tooManyPendingInvitesValue:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 97
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;Ljava/lang/Long;Ljava/lang/Long;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .line 101
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->CANT_SHARE_OUTSIDE_TEAM:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;Ljava/lang/Long;Ljava/lang/Long;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->CANT_SHARE_OUTSIDE_TEAM:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .line 106
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;Ljava/lang/Long;Ljava/lang/Long;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .line 110
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TOO_MANY_INVITEES:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;Ljava/lang/Long;Ljava/lang/Long;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->TOO_MANY_INVITEES:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .line 116
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;Ljava/lang/Long;Ljava/lang/Long;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .line 120
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;Ljava/lang/Long;Ljava/lang/Long;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .line 124
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;Ljava/lang/Long;Ljava/lang/Long;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .line 132
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;Ljava/lang/Long;Ljava/lang/Long;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;
    .param p2, "accessErrorValue"    # Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .param p3, "badMemberValue"    # Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .param p4, "tooManyMembersValue"    # Ljava/lang/Long;
    .param p5, "tooManyPendingInvitesValue"    # Ljava/lang/Long;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    .line 157
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .line 158
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->badMemberValue:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    .line 159
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->tooManyMembersValue:Ljava/lang/Long;

    .line 160
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->tooManyPendingInvitesValue:Ljava/lang/Long;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->badMemberValue:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->tooManyMembersValue:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->tooManyPendingInvitesValue:Ljava/lang/Long;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    .locals 6
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .prologue
    const/4 v3, 0x0

    .line 206
    if-nez p0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static badMember(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    .locals 6
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    .prologue
    const/4 v2, 0x0

    .line 267
    if-nez p0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->BAD_MEMBER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    move-object v3, p0

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static tooManyMembers(J)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    .locals 6
    .param p0, "value"    # J

    .prologue
    const/4 v2, 0x0

    .line 325
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TOO_MANY_MEMBERS:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v3, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static tooManyPendingInvites(J)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    .locals 6
    .param p0, "value"    # J

    .prologue
    const/4 v2, 0x0

    .line 369
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TOO_MANY_PENDING_INVITES:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;-><init>(Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 471
    if-ne p1, p0, :cond_1

    .line 509
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 474
    :cond_1
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    if-eqz v3, :cond_7

    move-object v0, p1

    .line 475
    check-cast v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .line 476
    .local v0, "other":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-eq v3, v4, :cond_2

    move v2, v1

    .line 477
    goto :goto_0

    .line 479
    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$1;->$SwitchMap$com$dropbox$core$v2$sharing$AddFolderMemberError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 505
    goto :goto_0

    .line 481
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    move v2, v1

    goto :goto_0

    .line 485
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->badMemberValue:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->badMemberValue:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->badMemberValue:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->badMemberValue:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    move v2, v1

    goto :goto_0

    .line 489
    :pswitch_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->tooManyMembersValue:Ljava/lang/Long;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->tooManyMembersValue:Ljava/lang/Long;

    if-eq v3, v4, :cond_0

    move v2, v1

    goto :goto_0

    .line 491
    :pswitch_4
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->tooManyPendingInvitesValue:Ljava/lang/Long;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->tooManyPendingInvitesValue:Ljava/lang/Long;

    if-eq v3, v4, :cond_0

    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    :cond_7
    move v2, v1

    .line 509
    goto :goto_0

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public getBadMemberValue()Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->BAD_MEMBER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.BAD_MEMBER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->badMemberValue:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    return-object v0
.end method

.method public getTooManyMembersValue()J
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TOO_MANY_MEMBERS:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TOO_MANY_MEMBERS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->tooManyMembersValue:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTooManyPendingInvitesValue()J
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TOO_MANY_PENDING_INVITES:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 386
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TOO_MANY_PENDING_INVITES, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->tooManyPendingInvitesValue:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 459
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->badMemberValue:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->tooManyMembersValue:Ljava/lang/Long;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->tooManyPendingInvitesValue:Ljava/lang/Long;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 466
    .local v0, "hash":I
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBadMember()Z
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->BAD_MEMBER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCantShareOutsideTeam()Z
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->CANT_SHARE_OUTSIDE_TEAM:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmailUnverified()Z
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsufficientPlan()Z
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoPermission()Z
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

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
    .line 454
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRateLimit()Z
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTeamFolder()Z
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTooManyInvitees()Z
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TOO_MANY_INVITEES:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTooManyMembers()Z
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TOO_MANY_MEMBERS:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTooManyPendingInvites()Z
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TOO_MANY_PENDING_INVITES:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 515
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 527
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
