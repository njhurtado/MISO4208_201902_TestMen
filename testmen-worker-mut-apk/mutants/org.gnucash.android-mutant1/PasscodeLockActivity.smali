.class public Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PasscodeLockActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PasscodeLockActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private isSessionActive()Z
    .locals 4

    .prologue
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/gnucash/android/app/GnuCashApplication;->PASSCODE_SESSION_INIT_TIME:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onPause()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/gnucash/android/app/GnuCashApplication;->PASSCODE_SESSION_INIT_TIME:J

    .line 78
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/16 v6, 0x2000

    const/4 v8, 0x0

    .line 42
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 44
    invoke-virtual {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 45
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "enabled_passcode"

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 46
    .local v1, "isPassEnabled":Z
    if-eqz v1, :cond_3

    .line 47
    invoke-virtual {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 53
    :goto_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x100000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 54
    const-wide/16 v6, 0x0

    sput-wide v6, Lorg/gnucash/android/app/GnuCashApplication;->PASSCODE_SESSION_INIT_TIME:J

    .line 58
    :cond_0
    const-string v5, "skip_passcode_screen"

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 59
    .local v4, "skipPasscode":Z
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "skip_passcode_screen"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 60
    const-string v5, "passcode"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "passCode":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->isSessionActive()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    if-nez v4, :cond_2

    .line 63
    const-string v5, "PasscodeLockActivity"

    const-string v6, "Show passcode screen"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lorg/gnucash/android/ui/passcode/PasscodeLockScreenActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    invoke-virtual {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const v6, 0x10008000

    .line 66
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "3c8baa0fe72e4336ba6c5d2a5f78ca3b"


    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 69
    invoke-virtual {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 70
    :cond_1
    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-void

    .line 49
    .end local v2    # "passCode":Ljava/lang/String;
    .end local v4    # "skipPasscode":Z
    :cond_3
    invoke-virtual {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0
.end method
