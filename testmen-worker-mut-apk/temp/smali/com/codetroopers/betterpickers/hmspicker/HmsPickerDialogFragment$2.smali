.class Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;
.super Ljava/lang/Object;
.source "HmsPickerDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 115
    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    invoke-static {v3}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->access$000(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$HmsPickerDialogHandlerV2;

    .line 116
    .local v0, "handler":Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$HmsPickerDialogHandlerV2;
    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    invoke-static {v3}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->access$100(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;)I

    move-result v1

    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    invoke-static {v3}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;)Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->isNegative()Z

    move-result v2

    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    invoke-static {v3}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;)Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->getHours()I

    move-result v3

    iget-object v4, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;)Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->getMinutes()I

    move-result v4

    iget-object v5, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    invoke-static {v5}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;)Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->getSeconds()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$HmsPickerDialogHandlerV2;->onDialogHmsSet(IZIII)V

    goto :goto_0

    .line 119
    .end local v0    # "handler":Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$HmsPickerDialogHandlerV2;
    :cond_0
    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    invoke-virtual {v3}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    .line 120
    .local v8, "activity":Landroid/app/Activity;
    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    invoke-virtual {v3}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v9

    .line 122
    .local v9, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v3, v8, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$HmsPickerDialogHandlerV2;

    if-eqz v3, :cond_2

    move-object v1, v8

    .line 123
    check-cast v1, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$HmsPickerDialogHandlerV2;

    .line 125
    .local v1, "act":Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$HmsPickerDialogHandlerV2;
    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    invoke-static {v3}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->access$100(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    invoke-static {v3}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;)Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->isNegative()Z

    move-result v3

    iget-object v4, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;)Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->getHours()I

    move-result v4

    iget-object v5, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    invoke-static {v5}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;)Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->getMinutes()I

    move-result v5

    iget-object v6, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    invoke-static {v6}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;)Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->getSeconds()I

    move-result v6

    invoke-interface/range {v1 .. v6}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$HmsPickerDialogHandlerV2;->onDialogHmsSet(IZIII)V

    .line 132
    .end local v1    # "act":Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$HmsPickerDialogHandlerV2;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    invoke-virtual {v3}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->dismiss()V

    .line 133
    return-void

    .line 126
    :cond_2
    instance-of v3, v9, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$HmsPickerDialogHandlerV2;

    if-eqz v3, :cond_1

    move-object v2, v9

    .line 127
    check-cast v2, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$HmsPickerDialogHandlerV2;

    .line 129
    .local v2, "frag":Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$HmsPickerDialogHandlerV2;
    iget-object v3, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    invoke-static {v3}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->access$100(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    invoke-static {v4}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;)Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->isNegative()Z

    move-result v4

    iget-object v5, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    invoke-static {v5}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;)Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->getHours()I

    move-result v5

    iget-object v6, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    invoke-static {v6}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;)Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->getMinutes()I

    move-result v6

    iget-object v7, p0, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$2;->this$0:Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;

    invoke-static {v7}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;->access$200(Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment;)Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codetroopers/betterpickers/hmspicker/HmsPicker;->getSeconds()I

    move-result v7

    invoke-interface/range {v2 .. v7}, Lcom/codetroopers/betterpickers/hmspicker/HmsPickerDialogFragment$HmsPickerDialogHandlerV2;->onDialogHmsSet(IZIII)V

    goto :goto_1
.end method
