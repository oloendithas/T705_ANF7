.class Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;
.super Ljava/lang/Object;
.source "ContextAwareLanguageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreferredLanguageSet"
.end annotation


# instance fields
.field private mKey:I

.field private mPreferLanguageList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;


# direct methods
.method public constructor <init>(Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;ILjava/util/LinkedList;)V
    .locals 1
    .param p2, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 864
    .local p3, "plList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;>;"
    iput-object p1, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;->this$0:Lcom/diotek/ime/framework/language/ContextAwareLanguageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 861
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;->mKey:I

    .line 862
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;->mPreferLanguageList:Ljava/util/LinkedList;

    .line 865
    iput p2, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;->mKey:I

    .line 866
    iput-object p3, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;->mPreferLanguageList:Ljava/util/LinkedList;

    .line 867
    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .prologue
    .line 870
    iget v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;->mKey:I

    return v0
.end method

.method public getPreferredLanguageList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 874
    iget-object v0, p0, Lcom/diotek/ime/framework/language/ContextAwareLanguageManager$PreferredLanguageSet;->mPreferLanguageList:Ljava/util/LinkedList;

    return-object v0
.end method
