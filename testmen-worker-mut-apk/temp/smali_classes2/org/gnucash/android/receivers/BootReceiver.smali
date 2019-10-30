.class public Lorg/gnucash/android/receivers/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    invoke-static {p1}, Lorg/gnucash/android/app/GnuCashApplication;->startScheduledActionExecutionService(Landroid/content/Context;)V

    .line 36
    invoke-static {p1}, Lorg/gnucash/android/util/BackupManager;->schedulePeriodicBackups(Landroid/content/Context;)V

    .line 37
    return-void
.end method
