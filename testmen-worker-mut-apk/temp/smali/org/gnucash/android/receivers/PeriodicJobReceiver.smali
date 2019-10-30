.class public Lorg/gnucash/android/receivers/PeriodicJobReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PeriodicJobReceiver.java"


# static fields
.field public static final ACTION_BACKUP:Ljava/lang/String; = "org.gnucash.android.action_backup"

.field public static final ACTION_SCHEDULED_ACTIONS:Ljava/lang/String; = "org.gnucash.android.action_scheduled_actions"

.field private static final LOG_TAG:Ljava/lang/String; = "PeriodicJobReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 42
    const-string v0, "PeriodicJobReceiver"

    const-string v1, "No action was set in the intent. Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.gnucash.android.action_backup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-static {p1}, Lorg/gnucash/android/util/BackupJob;->enqueueWork(Landroid/content/Context;)V

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.gnucash.android.action_scheduled_actions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p1}, Lorg/gnucash/android/service/ScheduledActionService;->enqueueWork(Landroid/content/Context;)V

    goto :goto_0
.end method
