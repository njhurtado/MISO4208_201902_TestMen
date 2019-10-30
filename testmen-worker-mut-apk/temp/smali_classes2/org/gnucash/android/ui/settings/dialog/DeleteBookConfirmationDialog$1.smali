.class Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog$1;
.super Ljava/lang/Object;
.source "DeleteBookConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog;

    .prologue
    .line 51
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 55
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "bookUID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "bookUID":Ljava/lang/String;
    invoke-static {v0}, Lorg/gnucash/android/util/BackupManager;->backupBook(Ljava/lang/String;)Z

    .line 57
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->deleteBook(Ljava/lang/String;)Z

    .line 58
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lorg/gnucash/android/ui/common/Refreshable;

    invoke-interface {v1}, Lorg/gnucash/android/ui/common/Refreshable;->refresh()V

    .line 59
    return-void
.end method
