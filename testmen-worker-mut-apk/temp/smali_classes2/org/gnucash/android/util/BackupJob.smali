.class public Lorg/gnucash/android/util/BackupJob;
.super Landroid/support/v4/app/JobIntentService;
.source "BackupJob.java"


# static fields
.field private static final JOB_ID:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "BackupJob"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/JobIntentService;-><init>()V

    return-void
.end method

.method public static enqueueWork(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/gnucash/android/util/BackupJob;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lorg/gnucash/android/util/BackupJob;

    const/16 v2, 0x3e8

    invoke-static {p0, v1, v2, v0}, Lorg/gnucash/android/util/BackupJob;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    const-string v0, "BackupJob"

    const-string v1, "Doing backup of all books."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Lorg/gnucash/android/util/BackupManager;->backupAllBooks()V

    .line 45
    return-void
.end method
