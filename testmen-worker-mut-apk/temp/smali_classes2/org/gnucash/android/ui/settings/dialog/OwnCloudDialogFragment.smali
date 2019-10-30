.class public Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "OwnCloudDialogFragment.java"


# static fields
.field private static ocCheckBox:Landroid/support/v7/preference/CheckBoxPreference;


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDir:Landroid/widget/EditText;

.field private mDirError:Landroid/widget/TextView;

.field private mOC_dir:Ljava/lang/String;

.field private mOC_password:Ljava/lang/String;

.field private mOC_server:Ljava/lang/String;

.field private mOC_username:Ljava/lang/String;

.field private mOkButton:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mServer:Landroid/widget/EditText;

.field private mServerError:Landroid/widget/TextView;

.field private mUsername:Landroid/widget/EditText;

.field private mUsernameError:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mServerError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mUsernameError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mDir:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_dir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->save()V

    return-void
.end method

.method static synthetic access$1300(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->checkData()V

    return-void
.end method

.method static synthetic access$200(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->saveButton()V

    return-void
.end method

.method static synthetic access$300(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mServer:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_server:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mUsername:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_username:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_password:Ljava/lang/String;

    return-object v0
.end method

.method private checkData()V
    .locals 10

    .prologue
    const/16 v7, 0x8

    const/4 v9, 0x0

    .line 160
    iget-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mServerError:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mUsernameError:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mDirError:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mServer:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_server:Ljava/lang/String;

    .line 165
    iget-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_username:Ljava/lang/String;

    .line 166
    iget-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_password:Ljava/lang/String;

    .line 167
    iget-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mDir:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_dir:Ljava/lang/String;

    .line 169
    iget-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_server:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 170
    .local v5, "serverUri":Landroid/net/Uri;
    iget-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/owncloud/android/lib/common/OwnCloudClientFactory;->createOwnCloudClient(Landroid/net/Uri;Landroid/content/Context;Z)Lcom/owncloud/android/lib/common/OwnCloudClient;

    move-result-object v3

    .line 171
    .local v3, "mClient":Lcom/owncloud/android/lib/common/OwnCloudClient;
    iget-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_username:Ljava/lang/String;

    iget-object v7, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_password:Ljava/lang/String;

    .line 172
    invoke-static {v6, v7}, Lcom/owncloud/android/lib/common/OwnCloudCredentialsFactory;->newBasicCredentials(Ljava/lang/String;Ljava/lang/String;)Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v6

    .line 171
    invoke-virtual {v3, v6}, Lcom/owncloud/android/lib/common/OwnCloudClient;->setCredentials(Lcom/owncloud/android/lib/common/OwnCloudCredentials;)V

    .line 175
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 177
    .local v4, "mHandler":Landroid/os/Handler;
    new-instance v2, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$1;-><init>(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)V

    .line 209
    .local v2, "listener":Lcom/owncloud/android/lib/common/operations/OnRemoteOperationListener;
    new-instance v0, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;

    iget-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;-><init>(Landroid/content/Context;)V

    .line 210
    .local v0, "g":Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;
    invoke-virtual {v0, v3, v2, v4}, Lcom/owncloud/android/lib/resources/status/GetRemoteStatusOperation;->execute(Lcom/owncloud/android/lib/common/OwnCloudClient;Lcom/owncloud/android/lib/common/operations/OnRemoteOperationListener;Landroid/os/Handler;)Ljava/lang/Thread;

    .line 212
    new-instance v1, Lcom/owncloud/android/lib/resources/users/GetRemoteUserInfoOperation;

    invoke-direct {v1}, Lcom/owncloud/android/lib/resources/users/GetRemoteUserInfoOperation;-><init>()V

    .line 213
    .local v1, "gu":Lcom/owncloud/android/lib/resources/users/GetRemoteUserInfoOperation;
    invoke-virtual {v1, v3, v2, v4}, Lcom/owncloud/android/lib/resources/users/GetRemoteUserInfoOperation;->execute(Lcom/owncloud/android/lib/common/OwnCloudClient;Lcom/owncloud/android/lib/common/operations/OnRemoteOperationListener;Landroid/os/Handler;)Ljava/lang/Thread;

    .line 215
    iget-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_dir:Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/owncloud/android/lib/resources/files/FileUtils;->isValidPath(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 216
    iget-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mDirError:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0600bd

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    iget-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mDirError:Landroid/widget/TextView;

    const v7, 0x7f0f014d

    invoke-virtual {p0, v7}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mDirError:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    :goto_0
    invoke-direct {p0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->saveButton()V

    .line 225
    return-void

    .line 220
    :cond_0
    iget-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mDirError:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f060061

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    iget-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mDirError:Landroid/widget/TextView;

    const v7, 0x7f0f014c

    invoke-virtual {p0, v7}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v6, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mDirError:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static newInstance(Landroid/support/v7/preference/Preference;)Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;
    .locals 1
    .param p0, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 75
    new-instance v0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;

    invoke-direct {v0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;-><init>()V

    .line 76
    .local v0, "fragment":Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;
    if-nez p0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "pref":Landroid/support/v7/preference/Preference;
    :goto_0
    sput-object p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->ocCheckBox:Landroid/support/v7/preference/CheckBoxPreference;

    .line 77
    return-object v0

    .line 76
    .restart local p0    # "pref":Landroid/support/v7/preference/Preference;
    :cond_0
    check-cast p0, Landroid/support/v7/preference/CheckBoxPreference;

    goto :goto_0
.end method

.method private save()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 145
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 146
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 147
    const v1, 0x7f0f00b2

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_server:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    const v1, 0x7f0f00b4

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_username:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    const v1, 0x7f0f00b1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_password:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    const v1, 0x7f0f00b0

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_dir:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    const v1, 0x7f0f0152

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 154
    sget-object v1, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->ocCheckBox:Landroid/support/v7/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->ocCheckBox:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 156
    :cond_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->dismiss()V

    .line 157
    return-void
.end method

.method private saveButton()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mDirError:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f014d

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mUsernameError:Landroid/widget/TextView;

    .line 137
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0154

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mServerError:Landroid/widget/TextView;

    .line 138
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0151

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOkButton:Landroid/widget/Button;

    const v1, 0x7f0f0035

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOkButton:Landroid/widget/Button;

    const v1, 0x7f0f0036

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$2;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$2;-><init>(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOkButton:Landroid/widget/Button;

    new-instance v1, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$3;

    invoke-direct {v1, p0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment$3;-><init>(Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 132
    invoke-direct {p0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->setListeners()V

    .line 133
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->setStyle(II)V

    .line 89
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mContext:Landroid/content/Context;

    .line 90
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0f014e

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 92
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mPrefs:Landroid/content/SharedPreferences;

    const v1, 0x7f0f00b2

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f014f

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_server:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mPrefs:Landroid/content/SharedPreferences;

    const v1, 0x7f0f00b4

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_username:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mPrefs:Landroid/content/SharedPreferences;

    const v1, 0x7f0f00b1

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_password:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mPrefs:Landroid/content/SharedPreferences;

    const v1, 0x7f0f00b0

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f0025

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_dir:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    .line 102
    const v1, 0x7f0b0049

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090173

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mServer:Landroid/widget/EditText;

    .line 105
    const v1, 0x7f090176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mUsername:Landroid/widget/EditText;

    .line 106
    const v1, 0x7f090175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mPassword:Landroid/widget/EditText;

    .line 107
    const v1, 0x7f090171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mDir:Landroid/widget/EditText;

    .line 109
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mServer:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_server:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mDir:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_dir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mPassword:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mUsername:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOC_username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const v1, 0x7f090174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mServerError:Landroid/widget/TextView;

    .line 115
    const v1, 0x7f090177

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mUsernameError:Landroid/widget/TextView;

    .line 116
    const v1, 0x7f090172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mDirError:Landroid/widget/TextView;

    .line 117
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mServerError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mUsernameError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mDirError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mCancelButton:Landroid/widget/Button;

    .line 122
    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 123
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/OwnCloudDialogFragment;->mOkButton:Landroid/widget/Button;

    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 125
    return-object v0
.end method
