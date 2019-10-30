.class public Lorg/gnucash/android/ui/passcode/PasscodeLockScreenActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PasscodeLockScreenActivity.java"

# interfaces
.implements Lorg/gnucash/android/ui/passcode/KeyboardFragment$OnPasscodeEnteredListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PassLockScreenActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/passcode/PasscodeLockScreenActivity;->setResult(I)V

    .line 73
    const-string v0, "disable_passcode"

    invoke-virtual {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "disable_passcode"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockScreenActivity;->finish()V

    .line 83
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    sub-long/2addr v0, v2

    sput-wide v0, Lorg/gnucash/android/app/GnuCashApplication;->PASSCODE_SESSION_INIT_TIME:J

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/passcode/PasscodeLockScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f0b008c

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/passcode/PasscodeLockScreenActivity;->setContentView(I)V

    .line 43
    return-void
.end method

.method public onPasscodeEntered(Ljava/lang/String;)V
    .locals 4
    .param p1, "pass"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "passcode"

    const-string v3, ""

    .line 48
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "passcode":Ljava/lang/String;
    const-string v1, "PassLockScreenActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Passcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    const-string v1, "disable_passcode"

    invoke-virtual {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "disable_passcode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/passcode/PasscodeLockScreenActivity;->setResult(I)V

    .line 54
    invoke-virtual {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockScreenActivity;->finish()V

    .line 67
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lorg/gnucash/android/app/GnuCashApplication;->PASSCODE_SESSION_INIT_TIME:J

    .line 58
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 59
    invoke-virtual {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "passcode_class_caller"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 60
    invoke-virtual {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x14008000

    .line 61
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 62
    invoke-virtual {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 58
    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/passcode/PasscodeLockScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 65
    :cond_1
    const v1, 0x7f0f020a

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
