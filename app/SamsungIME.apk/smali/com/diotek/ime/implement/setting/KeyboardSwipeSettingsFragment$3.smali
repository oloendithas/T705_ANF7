.class Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment$3;
.super Ljava/lang/Object;
.source "KeyboardSwipeSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment$3;->this$0:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment$3;->this$0:Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;

    # invokes: Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->changeSwipe(Landroid/preference/Preference;)V
    invoke-static {v0, p1}, Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;->access$000(Lcom/diotek/ime/implement/setting/KeyboardSwipeSettingsFragment;Landroid/preference/Preference;)V

    .line 105
    const/4 v0, 0x1

    return v0
.end method
