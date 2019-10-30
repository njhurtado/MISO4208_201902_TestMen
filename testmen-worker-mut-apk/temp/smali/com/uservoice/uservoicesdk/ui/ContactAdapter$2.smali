.class Lcom/uservoice/uservoicesdk/ui/ContactAdapter$2;
.super Ljava/lang/Object;
.source "ContactAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/ui/ContactAdapter;Lcom/uservoice/uservoicesdk/model/CustomField;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/ui/ContactAdapter;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$2;->this$0:Lcom/uservoice/uservoicesdk/ui/ContactAdapter;

    iput-object p2, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$2;->val$customField:Lcom/uservoice/uservoicesdk/model/CustomField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
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
    .line 111
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$2;->this$0:Lcom/uservoice/uservoicesdk/ui/ContactAdapter;

    invoke-static {v0}, Lcom/uservoice/uservoicesdk/ui/ContactAdapter;->access$000(Lcom/uservoice/uservoicesdk/ui/ContactAdapter;)Ljava/util/Map;

    move-result-object v1

    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$2;->val$customField:Lcom/uservoice/uservoicesdk/model/CustomField;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/CustomField;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/ui/ContactAdapter$2;->val$customField:Lcom/uservoice/uservoicesdk/model/CustomField;

    invoke-virtual {v0}, Lcom/uservoice/uservoicesdk/model/CustomField;->getPredefinedValues()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v3, p3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
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
    .line 116
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
