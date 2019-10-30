.class Lorg/gnucash/android/ui/account/AccountsActivity$2;
.super Ljava/lang/Object;
.source "AccountsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/account/AccountsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/account/AccountsActivity;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/account/AccountsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/account/AccountsActivity;

    .prologue
    .line 260
    iput-object p1, p0, Lorg/gnucash/android/ui/account/AccountsActivity$2;->this$0:Lorg/gnucash/android/ui/account/AccountsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsActivity$2;->this$0:Lorg/gnucash/android/ui/account/AccountsActivity;

    const-class v2, Lorg/gnucash/android/ui/common/FormActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v0, "addAccountIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v1, "form_type"

    sget-object v2, Lorg/gnucash/android/ui/common/FormActivity$FormType;->ACCOUNT:Lorg/gnucash/android/ui/common/FormActivity$FormType;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/common/FormActivity$FormType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountsActivity$2;->this$0:Lorg/gnucash/android/ui/account/AccountsActivity;

    const/16 v2, 0x10

    invoke-virtual {v1, v0, v2}, Lorg/gnucash/android/ui/account/AccountsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 267
    return-void
.end method
