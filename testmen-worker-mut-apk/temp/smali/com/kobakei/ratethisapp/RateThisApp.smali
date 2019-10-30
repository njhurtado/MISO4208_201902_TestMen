.class public Lcom/kobakei/ratethisapp/RateThisApp;
.super Ljava/lang/Object;
.source "RateThisApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kobakei/ratethisapp/RateThisApp$Callback;,
        Lcom/kobakei/ratethisapp/RateThisApp$Config;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final KEY_ASK_LATER_DATE:Ljava/lang/String; = "rta_ask_later_date"

.field private static final KEY_INSTALL_DATE:Ljava/lang/String; = "rta_install_date"

.field private static final KEY_LAUNCH_TIMES:Ljava/lang/String; = "rta_launch_times"

.field private static final KEY_OPT_OUT:Ljava/lang/String; = "rta_opt_out"

.field private static final PREF_NAME:Ljava/lang/String; = "RateThisApp"

.field private static final TAG:Ljava/lang/String;

.field private static mAskLaterDate:Ljava/util/Date;

.field private static mInstallDate:Ljava/util/Date;

.field private static mLaunchTimes:I

.field private static mOptOut:Z

.field private static sCallback:Lcom/kobakei/ratethisapp/RateThisApp$Callback;

.field private static sConfig:Lcom/kobakei/ratethisapp/RateThisApp$Config;

.field private static sDialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    const-class v0, Lcom/kobakei/ratethisapp/RateThisApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kobakei/ratethisapp/RateThisApp;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/kobakei/ratethisapp/RateThisApp;->mInstallDate:Ljava/util/Date;

    .line 55
    sput v1, Lcom/kobakei/ratethisapp/RateThisApp;->mLaunchTimes:I

    .line 56
    sput-boolean v1, Lcom/kobakei/ratethisapp/RateThisApp;->mOptOut:Z

    .line 57
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/kobakei/ratethisapp/RateThisApp;->mAskLaterDate:Ljava/util/Date;

    .line 59
    new-instance v0, Lcom/kobakei/ratethisapp/RateThisApp$Config;

    invoke-direct {v0}, Lcom/kobakei/ratethisapp/RateThisApp$Config;-><init>()V

    sput-object v0, Lcom/kobakei/ratethisapp/RateThisApp;->sConfig:Lcom/kobakei/ratethisapp/RateThisApp$Config;

    .line 60
    sput-object v2, Lcom/kobakei/ratethisapp/RateThisApp;->sCallback:Lcom/kobakei/ratethisapp/RateThisApp$Callback;

    .line 62
    sput-object v2, Lcom/kobakei/ratethisapp/RateThisApp;->sDialogRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    return-void
.end method

.method static synthetic access$1100(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/kobakei/ratethisapp/RateThisApp;->setOptOut(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$1200(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/kobakei/ratethisapp/RateThisApp;->clearSharedPreferences(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/kobakei/ratethisapp/RateThisApp;->storeAskLaterDate(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1400()Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/kobakei/ratethisapp/RateThisApp;->sDialogRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$800()Lcom/kobakei/ratethisapp/RateThisApp$Callback;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/kobakei/ratethisapp/RateThisApp;->sCallback:Lcom/kobakei/ratethisapp/RateThisApp$Callback;

    return-object v0
.end method

.method static synthetic access$900()Lcom/kobakei/ratethisapp/RateThisApp$Config;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/kobakei/ratethisapp/RateThisApp;->sConfig:Lcom/kobakei/ratethisapp/RateThisApp$Config;

    return-object v0
.end method

.method private static clearSharedPreferences(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 275
    const-string v2, "RateThisApp"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 276
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 277
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "rta_install_date"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 278
    const-string v2, "rta_launch_times"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 279
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 280
    return-void
.end method

.method public static getLaunchCount(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 197
    const-string v1, "RateThisApp"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 198
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "rta_launch_times"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static init(Lcom/kobakei/ratethisapp/RateThisApp$Config;)V
    .locals 0
    .param p0, "config"    # Lcom/kobakei/ratethisapp/RateThisApp$Config;

    .prologue
    .line 74
    sput-object p0, Lcom/kobakei/ratethisapp/RateThisApp;->sConfig:Lcom/kobakei/ratethisapp/RateThisApp$Config;

    .line 75
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 347
    return-void
.end method

.method public static onStart(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 92
    const-string v3, "RateThisApp"

    invoke-virtual {p0, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 93
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "rta_install_date"

    invoke-interface {v2, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-nez v3, :cond_0

    .line 96
    invoke-static {p0, v0}, Lcom/kobakei/ratethisapp/RateThisApp;->storeInstallDate(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V

    .line 99
    :cond_0
    const-string v3, "rta_launch_times"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 100
    .local v1, "launchTimes":I
    add-int/lit8 v1, v1, 0x1

    .line 101
    const-string v3, "rta_launch_times"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launch times; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kobakei/ratethisapp/RateThisApp;->log(Ljava/lang/String;)V

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    new-instance v3, Ljava/util/Date;

    const-string v4, "rta_install_date"

    invoke-interface {v2, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    sput-object v3, Lcom/kobakei/ratethisapp/RateThisApp;->mInstallDate:Ljava/util/Date;

    .line 107
    const-string v3, "rta_launch_times"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/kobakei/ratethisapp/RateThisApp;->mLaunchTimes:I

    .line 108
    const-string v3, "rta_opt_out"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/kobakei/ratethisapp/RateThisApp;->mOptOut:Z

    .line 109
    new-instance v3, Ljava/util/Date;

    const-string v4, "rta_ask_later_date"

    invoke-interface {v2, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    sput-object v3, Lcom/kobakei/ratethisapp/RateThisApp;->mAskLaterDate:Ljava/util/Date;

    .line 111
    invoke-static {p0}, Lcom/kobakei/ratethisapp/RateThisApp;->printStatus(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method private static printStatus(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 332
    const-string v1, "RateThisApp"

    invoke-virtual {p0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 333
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "*** RateThisApp Status ***"

    invoke-static {v1}, Lcom/kobakei/ratethisapp/RateThisApp;->log(Ljava/lang/String;)V

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Install Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    const-string v3, "rta_install_date"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kobakei/ratethisapp/RateThisApp;->log(Ljava/lang/String;)V

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch Times: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rta_launch_times"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kobakei/ratethisapp/RateThisApp;->log(Ljava/lang/String;)V

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opt out: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rta_opt_out"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kobakei/ratethisapp/RateThisApp;->log(Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public static setCallback(Lcom/kobakei/ratethisapp/RateThisApp$Callback;)V
    .locals 0
    .param p0, "callback"    # Lcom/kobakei/ratethisapp/RateThisApp$Callback;

    .prologue
    .line 83
    sput-object p0, Lcom/kobakei/ratethisapp/RateThisApp;->sCallback:Lcom/kobakei/ratethisapp/RateThisApp$Callback;

    .line 84
    return-void
.end method

.method private static setOptOut(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "optOut"    # Z

    .prologue
    .line 288
    const-string v2, "RateThisApp"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 289
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 290
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "rta_opt_out"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 291
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 292
    sput-boolean p1, Lcom/kobakei/ratethisapp/RateThisApp;->mOptOut:Z

    .line 293
    return-void
.end method

.method public static shouldShowRateDialog()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    sget-boolean v4, Lcom/kobakei/ratethisapp/RateThisApp;->mOptOut:Z

    if-eqz v4, :cond_1

    .line 161
    .local v0, "threshold":J
    :cond_0
    :goto_0
    return v2

    .line 153
    .end local v0    # "threshold":J
    :cond_1
    sget v4, Lcom/kobakei/ratethisapp/RateThisApp;->mLaunchTimes:I

    sget-object v5, Lcom/kobakei/ratethisapp/RateThisApp;->sConfig:Lcom/kobakei/ratethisapp/RateThisApp$Config;

    invoke-static {v5}, Lcom/kobakei/ratethisapp/RateThisApp$Config;->access$000(Lcom/kobakei/ratethisapp/RateThisApp$Config;)I

    move-result v5

    if-lt v4, v5, :cond_2

    move v2, v3

    .line 154
    goto :goto_0

    .line 156
    :cond_2
    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Lcom/kobakei/ratethisapp/RateThisApp;->sConfig:Lcom/kobakei/ratethisapp/RateThisApp$Config;

    invoke-static {v5}, Lcom/kobakei/ratethisapp/RateThisApp$Config;->access$100(Lcom/kobakei/ratethisapp/RateThisApp$Config;)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 157
    .restart local v0    # "threshold":J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-object v6, Lcom/kobakei/ratethisapp/RateThisApp;->mInstallDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v4, v4, v0

    if-ltz v4, :cond_0

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 158
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-object v6, Lcom/kobakei/ratethisapp/RateThisApp;->mAskLaterDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v4, v4, v0

    if-ltz v4, :cond_0

    move v2, v3

    .line 159
    goto :goto_0
.end method

.method public static showRateDialog(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-static {p0, v0}, Lcom/kobakei/ratethisapp/RateThisApp;->showRateDialog(Landroid/content/Context;Landroid/support/v7/app/AlertDialog$Builder;)V

    .line 172
    return-void
.end method

.method public static showRateDialog(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeId"    # I

    .prologue
    .line 180
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 181
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-static {p0, v0}, Lcom/kobakei/ratethisapp/RateThisApp;->showRateDialog(Landroid/content/Context;Landroid/support/v7/app/AlertDialog$Builder;)V

    .line 182
    return-void
.end method

.method private static showRateDialog(Landroid/content/Context;Landroid/support/v7/app/AlertDialog$Builder;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "builder"    # Landroid/support/v7/app/AlertDialog$Builder;

    .prologue
    .line 202
    sget-object v5, Lcom/kobakei/ratethisapp/RateThisApp;->sDialogRef:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/kobakei/ratethisapp/RateThisApp;->sDialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 267
    :goto_0
    return-void

    .line 207
    :cond_0
    sget-object v5, Lcom/kobakei/ratethisapp/RateThisApp;->sConfig:Lcom/kobakei/ratethisapp/RateThisApp$Config;

    invoke-static {v5}, Lcom/kobakei/ratethisapp/RateThisApp$Config;->access$200(Lcom/kobakei/ratethisapp/RateThisApp$Config;)I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/kobakei/ratethisapp/RateThisApp;->sConfig:Lcom/kobakei/ratethisapp/RateThisApp$Config;

    invoke-static {v5}, Lcom/kobakei/ratethisapp/RateThisApp$Config;->access$200(Lcom/kobakei/ratethisapp/RateThisApp$Config;)I

    move-result v4

    .line 208
    .local v4, "titleId":I
    :goto_1
    sget-object v5, Lcom/kobakei/ratethisapp/RateThisApp;->sConfig:Lcom/kobakei/ratethisapp/RateThisApp$Config;

    invoke-static {v5}, Lcom/kobakei/ratethisapp/RateThisApp$Config;->access$300(Lcom/kobakei/ratethisapp/RateThisApp$Config;)I

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/kobakei/ratethisapp/RateThisApp;->sConfig:Lcom/kobakei/ratethisapp/RateThisApp$Config;

    invoke-static {v5}, Lcom/kobakei/ratethisapp/RateThisApp$Config;->access$300(Lcom/kobakei/ratethisapp/RateThisApp$Config;)I

    move-result v1

    .line 209
    .local v1, "messageId":I
    :goto_2
    sget-object v5, Lcom/kobakei/ratethisapp/RateThisApp;->sConfig:Lcom/kobakei/ratethisapp/RateThisApp$Config;

    invoke-static {v5}, Lcom/kobakei/ratethisapp/RateThisApp$Config;->access$400(Lcom/kobakei/ratethisapp/RateThisApp$Config;)I

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/kobakei/ratethisapp/RateThisApp;->sConfig:Lcom/kobakei/ratethisapp/RateThisApp$Config;

    invoke-static {v5}, Lcom/kobakei/ratethisapp/RateThisApp$Config;->access$400(Lcom/kobakei/ratethisapp/RateThisApp$Config;)I

    move-result v0

    .line 210
    .local v0, "cancelButtonID":I
    :goto_3
    sget-object v5, Lcom/kobakei/ratethisapp/RateThisApp;->sConfig:Lcom/kobakei/ratethisapp/RateThisApp$Config;

    invoke-static {v5}, Lcom/kobakei/ratethisapp/RateThisApp$Config;->access$500(Lcom/kobakei/ratethisapp/RateThisApp$Config;)I

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/kobakei/ratethisapp/RateThisApp;->sConfig:Lcom/kobakei/ratethisapp/RateThisApp$Config;

    invoke-static {v5}, Lcom/kobakei/ratethisapp/RateThisApp$Config;->access$500(Lcom/kobakei/ratethisapp/RateThisApp$Config;)I

    move-result v3

    .line 211
    .local v3, "thanksButtonID":I
    :goto_4
    sget-object v5, Lcom/kobakei/ratethisapp/RateThisApp;->sConfig:Lcom/kobakei/ratethisapp/RateThisApp$Config;

    invoke-static {v5}, Lcom/kobakei/ratethisapp/RateThisApp$Config;->access$600(Lcom/kobakei/ratethisapp/RateThisApp$Config;)I

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/kobakei/ratethisapp/RateThisApp;->sConfig:Lcom/kobakei/ratethisapp/RateThisApp$Config;

    invoke-static {v5}, Lcom/kobakei/ratethisapp/RateThisApp$Config;->access$600(Lcom/kobakei/ratethisapp/RateThisApp$Config;)I

    move-result v2

    .line 212
    .local v2, "rateButtonID":I
    :goto_5
    invoke-virtual {p1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 213
    invoke-virtual {p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 214
    sget-object v5, Lcom/kobakei/ratethisapp/RateThisApp;->sConfig:Lcom/kobakei/ratethisapp/RateThisApp$Config;

    invoke-static {v5}, Lcom/kobakei/ratethisapp/RateThisApp$Config;->access$700(Lcom/kobakei/ratethisapp/RateThisApp$Config;)Z

    move-result v5

    invoke-virtual {p1, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 215
    new-instance v5, Lcom/kobakei/ratethisapp/RateThisApp$1;

    invoke-direct {v5, p0}, Lcom/kobakei/ratethisapp/RateThisApp$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 231
    new-instance v5, Lcom/kobakei/ratethisapp/RateThisApp$2;

    invoke-direct {v5, p0}, Lcom/kobakei/ratethisapp/RateThisApp$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 241
    new-instance v5, Lcom/kobakei/ratethisapp/RateThisApp$3;

    invoke-direct {v5, p0}, Lcom/kobakei/ratethisapp/RateThisApp$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 250
    new-instance v5, Lcom/kobakei/ratethisapp/RateThisApp$4;

    invoke-direct {v5, p0}, Lcom/kobakei/ratethisapp/RateThisApp$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 260
    new-instance v5, Lcom/kobakei/ratethisapp/RateThisApp$5;

    invoke-direct {v5}, Lcom/kobakei/ratethisapp/RateThisApp$5;-><init>()V

    invoke-virtual {p1, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 266
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v5, Lcom/kobakei/ratethisapp/RateThisApp;->sDialogRef:Ljava/lang/ref/WeakReference;

    goto/16 :goto_0

    .line 207
    .end local v0    # "cancelButtonID":I
    .end local v1    # "messageId":I
    .end local v2    # "rateButtonID":I
    .end local v3    # "thanksButtonID":I
    .end local v4    # "titleId":I
    :cond_1
    sget v4, Lcom/kobakei/ratethisapp/R$string;->rta_dialog_title:I

    goto :goto_1

    .line 208
    .restart local v4    # "titleId":I
    :cond_2
    sget v1, Lcom/kobakei/ratethisapp/R$string;->rta_dialog_message:I

    goto :goto_2

    .line 209
    .restart local v1    # "messageId":I
    :cond_3
    sget v0, Lcom/kobakei/ratethisapp/R$string;->rta_dialog_cancel:I

    goto :goto_3

    .line 210
    .restart local v0    # "cancelButtonID":I
    :cond_4
    sget v3, Lcom/kobakei/ratethisapp/R$string;->rta_dialog_no:I

    goto :goto_4

    .line 211
    .restart local v3    # "thanksButtonID":I
    :cond_5
    sget v2, Lcom/kobakei/ratethisapp/R$string;->rta_dialog_ok:I

    goto :goto_5
.end method

.method public static showRateDialogIfNeeded(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-static {}, Lcom/kobakei/ratethisapp/RateThisApp;->shouldShowRateDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {p0}, Lcom/kobakei/ratethisapp/RateThisApp;->showRateDialog(Landroid/content/Context;)V

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showRateDialogIfNeeded(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeId"    # I

    .prologue
    .line 135
    invoke-static {}, Lcom/kobakei/ratethisapp/RateThisApp;->shouldShowRateDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {p0, p1}, Lcom/kobakei/ratethisapp/RateThisApp;->showRateDialog(Landroid/content/Context;I)V

    .line 137
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stopRateDialog(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/kobakei/ratethisapp/RateThisApp;->setOptOut(Landroid/content/Context;Z)V

    .line 190
    return-void
.end method

.method private static storeAskLaterDate(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 321
    const-string v2, "RateThisApp"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 322
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 323
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "rta_ask_later_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 324
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 325
    return-void
.end method

.method private static storeInstallDate(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 302
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 303
    .local v1, "installDate":Ljava/util/Date;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-lt v5, v6, :cond_0

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 306
    .local v3, "packMan":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 307
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    new-instance v2, Ljava/util/Date;

    iget-wide v6, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "installDate":Ljava/util/Date;
    .local v2, "installDate":Ljava/util/Date;
    move-object v1, v2

    .line 312
    .end local v2    # "installDate":Ljava/util/Date;
    .end local v3    # "packMan":Landroid/content/pm/PackageManager;
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v1    # "installDate":Ljava/util/Date;
    :cond_0
    :goto_0
    const-string v5, "rta_install_date"

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-interface {p1, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 313
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "First install: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kobakei/ratethisapp/RateThisApp;->log(Ljava/lang/String;)V

    .line 314
    return-void

    .line 308
    .restart local v3    # "packMan":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
