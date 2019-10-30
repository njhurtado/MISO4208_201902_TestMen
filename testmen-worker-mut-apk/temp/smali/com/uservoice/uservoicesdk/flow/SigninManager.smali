.class public Lcom/uservoice/uservoicesdk/flow/SigninManager;
.super Ljava/lang/Object;
.source "SigninManager.java"


# static fields
.field private static emailFormat:Ljava/util/regex/Pattern;


# instance fields
.field private final activity:Landroid/support/v4/app/FragmentActivity;

.field private final callback:Lcom/uservoice/uservoicesdk/flow/SigninCallback;

.field private email:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private passwordOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "\\A(\\w[-+.\\w!\\#\\$%&\'\\*\\+\\-/=\\?\\^_`\\{\\|\\}~]*@([-\\w]*\\.)+[a-zA-Z]{2,9})\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->emailFormat:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/uservoice/uservoicesdk/flow/SigninCallback;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/uservoice/uservoicesdk/flow/SigninCallback;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 45
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object p2, v0

    .end local p2    # "email":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->email:Ljava/lang/String;

    .line 46
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move-object p3, v0

    .end local p3    # "name":Ljava/lang/String;
    :cond_3
    iput-object p3, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->name:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->callback:Lcom/uservoice/uservoicesdk/flow/SigninCallback;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/uservoice/uservoicesdk/flow/SigninManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/flow/SigninManager;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->promptToSignIn()V

    return-void
.end method

.method static synthetic access$100(Lcom/uservoice/uservoicesdk/flow/SigninManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/flow/SigninManager;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->createUser()V

    return-void
.end method

.method static synthetic access$200(Lcom/uservoice/uservoicesdk/flow/SigninManager;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/flow/SigninManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->activity:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/uservoice/uservoicesdk/flow/SigninManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/flow/SigninManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->email:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/uservoice/uservoicesdk/flow/SigninManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/flow/SigninManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/uservoice/uservoicesdk/flow/SigninManager;)Lcom/uservoice/uservoicesdk/flow/SigninCallback;
    .locals 1
    .param p0, "x0"    # Lcom/uservoice/uservoicesdk/flow/SigninManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->callback:Lcom/uservoice/uservoicesdk/flow/SigninCallback;

    return-object v0
.end method

.method private createUser()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->activity:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/uservoice/uservoicesdk/flow/SigninManager$2;

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1, p0, v2}, Lcom/uservoice/uservoicesdk/flow/SigninManager$2;-><init>(Lcom/uservoice/uservoicesdk/flow/SigninManager;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/uservoice/uservoicesdk/model/RequestToken;->getRequestToken(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    .line 97
    return-void
.end method

.method public static isValidEmail(Ljava/lang/String;)Z
    .locals 1
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->emailFormat:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private promptToSignIn()V
    .locals 4

    .prologue
    .line 100
    iget-boolean v1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->passwordOnly:Z

    if-eqz v1, :cond_0

    .line 101
    new-instance v0, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->callback:Lcom/uservoice/uservoicesdk/flow/SigninCallback;

    invoke-direct {v0, v1}, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;-><init>(Lcom/uservoice/uservoicesdk/flow/SigninCallback;)V

    .line 102
    .local v0, "dialog":Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "PasswordDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 107
    .end local v0    # "dialog":Lcom/uservoice/uservoicesdk/dialog/PasswordDialogFragment;
    :goto_0
    return-void

    .line 104
    :cond_0
    new-instance v0, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->email:Ljava/lang/String;

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->callback:Lcom/uservoice/uservoicesdk/flow/SigninCallback;

    invoke-direct {v0, v1, v2, v3}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/uservoice/uservoicesdk/flow/SigninCallback;)V

    .line 105
    .local v0, "dialog":Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "SigninDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/uservoice/uservoicesdk/dialog/SigninDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private signIn()V
    .locals 4

    .prologue
    .line 51
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/Session;->getUser()Lcom/uservoice/uservoicesdk/model/User;

    move-result-object v0

    .line 52
    .local v0, "currentUser":Lcom/uservoice/uservoicesdk/model/User;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->email:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->email:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/User;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->callback:Lcom/uservoice/uservoicesdk/flow/SigninCallback;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/flow/SigninCallback;->onSuccess()V

    .line 79
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/Session;->getAccessToken()Lcom/uservoice/uservoicesdk/model/AccessToken;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 56
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->callback:Lcom/uservoice/uservoicesdk/flow/SigninCallback;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/flow/SigninCallback;->onSuccess()V

    goto :goto_0

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->email:Ljava/lang/String;

    invoke-static {v1}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->isValidEmail(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 58
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->activity:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/uservoice/uservoicesdk/R$string;->uv_msg_bad_email_format:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 59
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->callback:Lcom/uservoice/uservoicesdk/flow/SigninCallback;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/flow/SigninCallback;->onFailure()V

    goto :goto_0

    .line 61
    :cond_3
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->email:Ljava/lang/String;

    if-nez v1, :cond_4

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v2}, Lcom/uservoice/uservoicesdk/Session;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->email:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->name:Ljava/lang/String;

    if-nez v1, :cond_5

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v2}, Lcom/uservoice/uservoicesdk/Session;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->name:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->email:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 64
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->activity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->email:Ljava/lang/String;

    new-instance v3, Lcom/uservoice/uservoicesdk/flow/SigninManager$1;

    invoke-direct {v3, p0}, Lcom/uservoice/uservoicesdk/flow/SigninManager$1;-><init>(Lcom/uservoice/uservoicesdk/flow/SigninManager;)V

    invoke-static {v1, v2, v3}, Lcom/uservoice/uservoicesdk/model/User;->discover(Landroid/content/Context;Ljava/lang/String;Lcom/uservoice/uservoicesdk/rest/Callback;)V

    goto :goto_0

    .line 61
    :cond_4
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->email:Ljava/lang/String;

    goto :goto_1

    .line 62
    :cond_5
    iget-object v1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->name:Ljava/lang/String;

    goto :goto_2

    .line 76
    :cond_6
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->promptToSignIn()V

    goto :goto_0
.end method

.method public static signIn(Landroid/support/v4/app/FragmentActivity;Lcom/uservoice/uservoicesdk/flow/SigninCallback;)V
    .locals 2
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "callback"    # Lcom/uservoice/uservoicesdk/flow/SigninCallback;

    .prologue
    const/4 v1, 0x0

    .line 32
    new-instance v0, Lcom/uservoice/uservoicesdk/flow/SigninManager;

    invoke-direct {v0, p0, v1, v1, p1}, Lcom/uservoice/uservoicesdk/flow/SigninManager;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/uservoice/uservoicesdk/flow/SigninCallback;)V

    invoke-direct {v0}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->signIn()V

    .line 33
    return-void
.end method

.method public static signIn(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/uservoice/uservoicesdk/flow/SigninCallback;)V
    .locals 1
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/uservoice/uservoicesdk/flow/SigninCallback;

    .prologue
    .line 36
    new-instance v0, Lcom/uservoice/uservoicesdk/flow/SigninManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/uservoice/uservoicesdk/flow/SigninManager;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/uservoice/uservoicesdk/flow/SigninCallback;)V

    invoke-direct {v0}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->signIn()V

    .line 37
    return-void
.end method

.method public static signinForSubscribe(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/uservoice/uservoicesdk/flow/SigninCallback;)V
    .locals 2
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/uservoice/uservoicesdk/flow/SigninCallback;

    .prologue
    .line 114
    new-instance v0, Lcom/uservoice/uservoicesdk/flow/SigninManager;

    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/uservoice/uservoicesdk/Session;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/uservoice/uservoicesdk/flow/SigninManager;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/uservoice/uservoicesdk/flow/SigninCallback;)V

    .line 115
    .local v0, "manager":Lcom/uservoice/uservoicesdk/flow/SigninManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->setPasswordOnly(Z)V

    .line 116
    invoke-direct {v0}, Lcom/uservoice/uservoicesdk/flow/SigninManager;->signIn()V

    .line 117
    return-void
.end method


# virtual methods
.method public setPasswordOnly(Z)V
    .locals 0
    .param p1, "passwordOnly"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/uservoice/uservoicesdk/flow/SigninManager;->passwordOnly:Z

    .line 111
    return-void
.end method
