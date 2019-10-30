.class final Lorg/gnucash/android/ui/account/AccountsActivity$4;
.super Ljava/lang/Object;
.source "AccountsActivity.java"

# interfaces
.implements Lorg/gnucash/android/ui/util/TaskDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/account/AccountsActivity;->createDefaultAccounts(Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$currencyCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lorg/gnucash/android/ui/account/AccountsActivity$4;->val$currencyCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskComplete()V
    .locals 3

    .prologue
    .line 442
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v0

    const-string v1, "currency_code"

    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountsActivity$4;->val$currencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->updateAllAccounts(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountsActivity$4;->val$currencyCode:Ljava/lang/String;

    invoke-static {v0}, Lorg/gnucash/android/app/GnuCashApplication;->setDefaultCurrencyCode(Ljava/lang/String;)V

    .line 444
    return-void
.end method
