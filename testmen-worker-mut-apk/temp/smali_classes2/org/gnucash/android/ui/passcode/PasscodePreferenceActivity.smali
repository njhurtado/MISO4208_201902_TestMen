.class public Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PasscodePreferenceActivity.java"

# interfaces
.implements Lorg/gnucash/android/ui/passcode/KeyboardFragment$OnPasscodeEnteredListener;


# instance fields
.field private mIsPassEnabled:Z

.field private mPassTextView:Landroid/widget/TextView;

.field private mPasscode:Ljava/lang/String;

.field private mReenter:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;->mReenter:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f0b008c

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;->setContentView(I)V

    .line 47
    const v0, 0x7f090180

    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;->mPassTextView:Landroid/widget/TextView;

    .line 49
    invoke-virtual {p0}, Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "enabled_passcode"

    const/4 v2, 0x0

    .line 50
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;->mIsPassEnabled:Z

    .line 52
    iget-boolean v0, p0, Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;->mIsPassEnabled:Z

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;->mPassTextView:Landroid/widget/TextView;

    const v1, 0x7f0f00f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 55
    :cond_0
    return-void
.end method

.method public onPasscodeEntered(Ljava/lang/String;)V
    .locals 6
    .param p1, "pass"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    invoke-virtual {p0}, Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "passcode"

    const-string v3, ""

    .line 60
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "passCode":Ljava/lang/String;
    iget-boolean v1, p0, Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;->mIsPassEnabled:Z

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iput-boolean v4, p0, Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;->mIsPassEnabled:Z

    .line 65
    iget-object v1, p0, Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;->mPassTextView:Landroid/widget/TextView;

    const v2, 0x7f0f00ec

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 84
    :goto_0
    return-void

    .line 67
    :cond_0
    const v1, 0x7f0f020a

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 72
    :cond_1
    iget-boolean v1, p0, Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;->mReenter:Z

    if-eqz v1, :cond_3

    .line 73
    iget-object v1, p0, Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;->mPasscode:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "passcode"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;->setResult(ILandroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;->finish()V

    goto :goto_0

    .line 77
    :cond_2
    const v1, 0x7f0f01fd

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 80
    :cond_3
    iput-object p1, p0, Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;->mPasscode:Ljava/lang/String;

    .line 81
    iput-boolean v5, p0, Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;->mReenter:Z

    .line 82
    iget-object v1, p0, Lorg/gnucash/android/ui/passcode/PasscodePreferenceActivity;->mPassTextView:Landroid/widget/TextView;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
