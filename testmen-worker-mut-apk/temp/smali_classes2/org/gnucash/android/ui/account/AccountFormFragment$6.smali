.class Lorg/gnucash/android/ui/account/AccountFormFragment$6;
.super Ljava/lang/Object;
.source "AccountFormFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 307
    iput-object p1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment$6;->this$0:Lorg/gnucash/android/ui/account/AccountFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 310
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountFormFragment$6;->this$0:Lorg/gnucash/android/ui/account/AccountFormFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->access$600(Lorg/gnucash/android/ui/account/AccountFormFragment;)V

    .line 311
    return-void
.end method
