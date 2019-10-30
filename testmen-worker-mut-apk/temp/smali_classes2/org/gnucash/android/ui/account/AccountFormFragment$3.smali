.class Lorg/gnucash/android/ui/account/AccountFormFragment$3;
.super Ljava/lang/Object;
.source "AccountFormFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 274
    iput-object p1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment$3;->this$0:Lorg/gnucash/android/ui/account/AccountFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "selectedItemView"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountFormFragment$3;->this$0:Lorg/gnucash/android/ui/account/AccountFormFragment;

    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment$3;->this$0:Lorg/gnucash/android/ui/account/AccountFormFragment;

    invoke-static {v1}, Lorg/gnucash/android/ui/account/AccountFormFragment;->access$100(Lorg/gnucash/android/ui/account/AccountFormFragment;)Lorg/gnucash/android/model/AccountType;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gnucash/android/ui/account/AccountFormFragment;->access$200(Lorg/gnucash/android/ui/account/AccountFormFragment;Lorg/gnucash/android/model/AccountType;)V

    .line 278
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountFormFragment$3;->this$0:Lorg/gnucash/android/ui/account/AccountFormFragment;

    invoke-static {v0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->access$300(Lorg/gnucash/android/ui/account/AccountFormFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountFormFragment$3;->this$0:Lorg/gnucash/android/ui/account/AccountFormFragment;

    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment$3;->this$0:Lorg/gnucash/android/ui/account/AccountFormFragment;

    invoke-static {v1}, Lorg/gnucash/android/ui/account/AccountFormFragment;->access$400(Lorg/gnucash/android/ui/account/AccountFormFragment;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v1

    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment$3;->this$0:Lorg/gnucash/android/ui/account/AccountFormFragment;

    invoke-static {v2}, Lorg/gnucash/android/ui/account/AccountFormFragment;->access$300(Lorg/gnucash/android/ui/account/AccountFormFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getID(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/gnucash/android/ui/account/AccountFormFragment;->access$500(Lorg/gnucash/android/ui/account/AccountFormFragment;J)V

    .line 280
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
