.class Lorg/gnucash/android/ui/account/AccountFormFragment$2;
.super Ljava/lang/Object;
.source "AccountFormFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/account/AccountFormFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/account/AccountFormFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/account/AccountFormFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/account/AccountFormFragment;

    .prologue
    .line 255
    iput-object p1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment$2;->this$0:Lorg/gnucash/android/ui/account/AccountFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 268
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 269
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountFormFragment$2;->this$0:Lorg/gnucash/android/ui/account/AccountFormFragment;

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 271
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 259
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 264
    return-void
.end method
