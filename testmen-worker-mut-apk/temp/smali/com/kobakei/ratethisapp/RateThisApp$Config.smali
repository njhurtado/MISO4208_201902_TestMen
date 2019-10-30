.class public Lcom/kobakei/ratethisapp/RateThisApp$Config;
.super Ljava/lang/Object;
.source "RateThisApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kobakei/ratethisapp/RateThisApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private mCancelButton:I

.field private mCancelable:Z

.field private mCriteriaInstallDays:I

.field private mCriteriaLaunchTimes:I

.field private mMessageId:I

.field private mNoButtonId:I

.field private mTitleId:I

.field private mUrl:Ljava/lang/String;

.field private mYesButtonId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 367
    const/4 v0, 0x7

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/kobakei/ratethisapp/RateThisApp$Config;-><init>(II)V

    .line 368
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "criteriaInstallDays"    # I
    .param p2, "criteriaLaunchTimes"    # I

    .prologue
    const/4 v1, 0x0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mUrl:Ljava/lang/String;

    .line 356
    iput v1, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mTitleId:I

    .line 357
    iput v1, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mMessageId:I

    .line 358
    iput v1, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mYesButtonId:I

    .line 359
    iput v1, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mNoButtonId:I

    .line 360
    iput v1, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mCancelButton:I

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mCancelable:Z

    .line 376
    iput p1, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mCriteriaInstallDays:I

    .line 377
    iput p2, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mCriteriaLaunchTimes:I

    .line 378
    return-void
.end method

.method static synthetic access$000(Lcom/kobakei/ratethisapp/RateThisApp$Config;)I
    .locals 1
    .param p0, "x0"    # Lcom/kobakei/ratethisapp/RateThisApp$Config;

    .prologue
    .line 352
    iget v0, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mCriteriaLaunchTimes:I

    return v0
.end method

.method static synthetic access$100(Lcom/kobakei/ratethisapp/RateThisApp$Config;)I
    .locals 1
    .param p0, "x0"    # Lcom/kobakei/ratethisapp/RateThisApp$Config;

    .prologue
    .line 352
    iget v0, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mCriteriaInstallDays:I

    return v0
.end method

.method static synthetic access$1000(Lcom/kobakei/ratethisapp/RateThisApp$Config;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kobakei/ratethisapp/RateThisApp$Config;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kobakei/ratethisapp/RateThisApp$Config;)I
    .locals 1
    .param p0, "x0"    # Lcom/kobakei/ratethisapp/RateThisApp$Config;

    .prologue
    .line 352
    iget v0, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mTitleId:I

    return v0
.end method

.method static synthetic access$300(Lcom/kobakei/ratethisapp/RateThisApp$Config;)I
    .locals 1
    .param p0, "x0"    # Lcom/kobakei/ratethisapp/RateThisApp$Config;

    .prologue
    .line 352
    iget v0, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mMessageId:I

    return v0
.end method

.method static synthetic access$400(Lcom/kobakei/ratethisapp/RateThisApp$Config;)I
    .locals 1
    .param p0, "x0"    # Lcom/kobakei/ratethisapp/RateThisApp$Config;

    .prologue
    .line 352
    iget v0, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mCancelButton:I

    return v0
.end method

.method static synthetic access$500(Lcom/kobakei/ratethisapp/RateThisApp$Config;)I
    .locals 1
    .param p0, "x0"    # Lcom/kobakei/ratethisapp/RateThisApp$Config;

    .prologue
    .line 352
    iget v0, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mNoButtonId:I

    return v0
.end method

.method static synthetic access$600(Lcom/kobakei/ratethisapp/RateThisApp$Config;)I
    .locals 1
    .param p0, "x0"    # Lcom/kobakei/ratethisapp/RateThisApp$Config;

    .prologue
    .line 352
    iget v0, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mYesButtonId:I

    return v0
.end method

.method static synthetic access$700(Lcom/kobakei/ratethisapp/RateThisApp$Config;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kobakei/ratethisapp/RateThisApp$Config;

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mCancelable:Z

    return v0
.end method


# virtual methods
.method public setCancelButtonText(I)V
    .locals 0
    .param p1, "stringId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 417
    iput p1, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mCancelButton:I

    .line 418
    return-void
.end method

.method public setCancelable(Z)V
    .locals 0
    .param p1, "cancelable"    # Z

    .prologue
    .line 430
    iput-boolean p1, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mCancelable:Z

    .line 431
    return-void
.end method

.method public setMessage(I)V
    .locals 0
    .param p1, "stringId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 393
    iput p1, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mMessageId:I

    .line 394
    return-void
.end method

.method public setNoButtonText(I)V
    .locals 0
    .param p1, "stringId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 409
    iput p1, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mNoButtonId:I

    .line 410
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .param p1, "stringId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 385
    iput p1, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mTitleId:I

    .line 386
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mUrl:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setYesButtonText(I)V
    .locals 0
    .param p1, "stringId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 401
    iput p1, p0, Lcom/kobakei/ratethisapp/RateThisApp$Config;->mYesButtonId:I

    .line 402
    return-void
.end method
