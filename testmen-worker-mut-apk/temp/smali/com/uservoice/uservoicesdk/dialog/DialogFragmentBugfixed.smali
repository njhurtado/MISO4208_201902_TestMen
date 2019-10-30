.class public abstract Lcom/uservoice/uservoicesdk/dialog/DialogFragmentBugfixed;
.super Landroid/support/v4/app/DialogFragment;
.source "DialogFragmentBugfixed.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 9
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 10
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uservoice/uservoicesdk/dialog/DialogFragmentBugfixed;->setRetainInstance(Z)V

    .line 11
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/DialogFragmentBugfixed;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/DialogFragmentBugfixed;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/uservoice/uservoicesdk/dialog/DialogFragmentBugfixed;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 18
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 19
    return-void
.end method
