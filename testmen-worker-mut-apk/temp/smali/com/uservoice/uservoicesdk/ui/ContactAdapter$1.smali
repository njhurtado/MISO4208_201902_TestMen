.class Lcom/uservoice/uservoicesdk/ui/ContactAdapter$1;
.super Ljava/lang/Object;
.source "ContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/ui/ContactAdapter;

.field final synthetic val$customField:Lcom/uservoice/uservoicesdk/model/CustomField;

.field final synthetic val$field:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/ui/ContactAdapter;Lcom/uservoice/uservoicesdk/model/CustomField;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/ui/ContactAdapter;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/ContactAdapter;

    iput-object p2, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$1;->val$customField:Lcom/uservoice/uservoicesdk/model/CustomField;

    iput-object p3, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$1;->val$field:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 97
    if-nez p2, :cond_0

    .line 98
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$1;->this$0:Lcom/uservoice/uservoicesdk/ui/ContactAdapter;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->access$000(Lcom/uservoice/uservoicesdk/ui/ContactAdapter;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$1;->val$customField:Lcom/uservoice/uservoicesdk/model/CustomField;

    invoke-virtual {v1}, Lcom/uservoice/uservoicesdk/model/CustomField;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$1;->val$field:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_0
    return-void
.end method
