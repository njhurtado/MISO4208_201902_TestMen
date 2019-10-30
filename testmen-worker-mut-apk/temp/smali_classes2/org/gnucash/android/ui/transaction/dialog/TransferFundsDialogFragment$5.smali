.class Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$5;
.super Ljava/lang/Object;
.source "TransferFundsDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;

    .prologue
    .line 175
    iput-object p1, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$5;->this$0:Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    iget-object v0, p0, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment$5;->this$0:Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;->access$100(Lorg/gnucash/android/ui/transaction/dialog/TransferFundsDialogFragment;)V

    .line 179
    return-void
.end method
