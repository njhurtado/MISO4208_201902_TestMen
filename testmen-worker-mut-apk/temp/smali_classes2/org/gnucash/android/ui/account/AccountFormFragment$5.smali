.class Lorg/gnucash/android/ui/account/AccountFormFragment$5;
.super Ljava/lang/Object;
.source "AccountFormFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 300
    iput-object p1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment$5;->this$0:Lorg/gnucash/android/ui/account/AccountFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 303
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountFormFragment$5;->this$0:Lorg/gnucash/android/ui/account/AccountFormFragment;

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDefaultTransferAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 304
    return-void
.end method
