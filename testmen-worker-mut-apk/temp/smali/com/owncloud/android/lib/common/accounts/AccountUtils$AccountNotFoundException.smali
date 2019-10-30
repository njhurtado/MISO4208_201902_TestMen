.class public Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;
.super Landroid/accounts/AccountsException;
.source "AccountUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/owncloud/android/lib/common/accounts/AccountUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountNotFoundException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x17602a036a9d0295L


# instance fields
.field private mFailedAccount:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "failedAccount"    # Landroid/accounts/Account;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 368
    invoke-direct {p0, p2, p3}, Landroid/accounts/AccountsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    iput-object p1, p0, Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;->mFailedAccount:Landroid/accounts/Account;

    .line 370
    return-void
.end method


# virtual methods
.method public getFailedAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/owncloud/android/lib/common/accounts/AccountUtils$AccountNotFoundException;->mFailedAccount:Landroid/accounts/Account;

    return-object v0
.end method
