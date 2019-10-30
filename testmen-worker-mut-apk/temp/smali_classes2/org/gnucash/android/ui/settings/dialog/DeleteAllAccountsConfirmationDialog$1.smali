.class Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog$1;
.super Ljava/lang/Object;
.source "DeleteAllAccountsConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog;

    .prologue
    .line 49
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 51
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog$1;->this$0:Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/settings/dialog/DeleteAllAccountsConfirmationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lorg/gnucash/android/util/BackupManager;->backupActiveBook()Z

    .line 53
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->deleteAllRecords()I

    .line 54
    const v1, 0x7f0f01ee

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 55
    invoke-static {v0}, Lorg/gnucash/android/ui/homescreen/WidgetConfigurationActivity;->updateAllWidgets(Landroid/content/Context;)V

    .line 56
    return-void
.end method
