.class public final Lcom/dropbox/core/v2/sharing/SharePathError;
.super Ljava/lang/Object;
.source "SharePathError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;,
        Lcom/dropbox/core/v2/sharing/SharePathError$Tag;
    }
.end annotation


# static fields
.field public static final CONTAINS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final CONTAINS_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final CONTAINS_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final INSIDE_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final INVALID_PATH:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final IS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final IS_FILE:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final IS_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final IS_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/SharePathError;


# instance fields
.field private final _tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

.field private final alreadySharedValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

.field private final invalidPathRootValue:Lcom/dropbox/core/v2/files/PathRootError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_FILE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;Lcom/dropbox/core/v2/files/PathRootError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->IS_FILE:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 112
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;Lcom/dropbox/core/v2/files/PathRootError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 116
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;Lcom/dropbox/core/v2/files/PathRootError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->CONTAINS_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 120
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;Lcom/dropbox/core/v2/files/PathRootError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->CONTAINS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 124
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;Lcom/dropbox/core/v2/files/PathRootError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->CONTAINS_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 128
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;Lcom/dropbox/core/v2/files/PathRootError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->IS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 132
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;Lcom/dropbox/core/v2/files/PathRootError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->INSIDE_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 136
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;Lcom/dropbox/core/v2/files/PathRootError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->IS_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 141
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;Lcom/dropbox/core/v2/files/PathRootError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 145
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INVALID_PATH:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;Lcom/dropbox/core/v2/files/PathRootError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->INVALID_PATH:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 149
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;Lcom/dropbox/core/v2/files/PathRootError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->IS_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 153
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;Lcom/dropbox/core/v2/files/PathRootError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 161
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-direct {v0, v1, v2, v2}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;Lcom/dropbox/core/v2/files/PathRootError;)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharePathError;->OTHER:Lcom/dropbox/core/v2/sharing/SharePathError;

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;Lcom/dropbox/core/v2/files/PathRootError;)V
    .locals 0
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/SharePathError$Tag;
    .param p2, "alreadySharedValue"    # Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .param p3, "invalidPathRootValue"    # Lcom/dropbox/core/v2/files/PathRootError;

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    .line 180
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->alreadySharedValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    .line 181
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->invalidPathRootValue:Lcom/dropbox/core/v2/files/PathRootError;

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/SharePathError;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/SharePathError;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->alreadySharedValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/SharePathError;)Lcom/dropbox/core/v2/files/PathRootError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/SharePathError;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->invalidPathRootValue:Lcom/dropbox/core/v2/files/PathRootError;

    return-object v0
.end method

.method public static alreadyShared(Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;)Lcom/dropbox/core/v2/sharing/SharePathError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    .prologue
    .line 327
    if-nez p0, :cond_0

    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->ALREADY_SHARED:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;Lcom/dropbox/core/v2/files/PathRootError;)V

    return-object v0
.end method

.method public static invalidPathRoot(Lcom/dropbox/core/v2/files/PathRootError;)Lcom/dropbox/core/v2/sharing/SharePathError;
    .locals 3
    .param p0, "value"    # Lcom/dropbox/core/v2/files/PathRootError;

    .prologue
    .line 410
    if-nez p0, :cond_0

    .line 411
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INVALID_PATH_ROOT:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/dropbox/core/v2/sharing/SharePathError;-><init>(Lcom/dropbox/core/v2/sharing/SharePathError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;Lcom/dropbox/core/v2/files/PathRootError;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 457
    if-ne p1, p0, :cond_0

    .line 501
    :goto_0
    :pswitch_0
    return v2

    .line 460
    :cond_0
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/SharePathError;

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 461
    check-cast v0, Lcom/dropbox/core/v2/sharing/SharePathError;

    .line 462
    .local v0, "other":Lcom/dropbox/core/v2/sharing/SharePathError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 463
    goto :goto_0

    .line 465
    :cond_1
    sget-object v3, Lcom/dropbox/core/v2/sharing/SharePathError$1;->$SwitchMap$com$dropbox$core$v2$sharing$SharePathError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v2, v1

    .line 497
    goto :goto_0

    .line 485
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->alreadySharedValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharePathError;->alreadySharedValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->alreadySharedValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharePathError;->alreadySharedValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v2, v1

    goto :goto_0

    .line 493
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->invalidPathRootValue:Lcom/dropbox/core/v2/files/PathRootError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharePathError;->invalidPathRootValue:Lcom/dropbox/core/v2/files/PathRootError;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->invalidPathRootValue:Lcom/dropbox/core/v2/files/PathRootError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharePathError;->invalidPathRootValue:Lcom/dropbox/core/v2/files/PathRootError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/PathRootError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    move v2, v1

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/SharePathError;
    :cond_6
    move v2, v1

    .line 501
    goto :goto_0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getAlreadySharedValue()Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->ALREADY_SHARED:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-eq v0, v1, :cond_0

    .line 347
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ALREADY_SHARED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->alreadySharedValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    return-object v0
.end method

.method public getInvalidPathRootValue()Lcom/dropbox/core/v2/files/PathRootError;
    .locals 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INVALID_PATH_ROOT:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-eq v0, v1, :cond_0

    .line 429
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.INVALID_PATH_ROOT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->invalidPathRootValue:Lcom/dropbox/core/v2/files/PathRootError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 447
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->alreadySharedValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->invalidPathRootValue:Lcom/dropbox/core/v2/files/PathRootError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 452
    .local v0, "hash":I
    return v0
.end method

.method public isAlreadyShared()Z
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->ALREADY_SHARED:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContainsAppFolder()Z
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContainsSharedFolder()Z
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContainsTeamFolder()Z
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->CONTAINS_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsideAppFolder()Z
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsideOsxPackage()Z
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsidePublicFolder()Z
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsideSharedFolder()Z
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidPath()Z
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INVALID_PATH:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidPathRoot()Z
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->INVALID_PATH_ROOT:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIsAppFolder()Z
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_APP_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIsFile()Z
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_FILE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIsOsxPackage()Z
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIsPublicFolder()Z
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->IS_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

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
    .line 442
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharePathError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/SharePathError$Tag;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharePathError;->_tag:Lcom/dropbox/core/v2/sharing/SharePathError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 507
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 519
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharePathError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
