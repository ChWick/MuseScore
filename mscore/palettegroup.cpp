#include "palettegroup.h"
#include "palette.h"
#include "qdebug.h"

namespace Ms {

PaletteGroup::PaletteGroup(QObject *parent)
    : QObject(parent) {

}

void PaletteGroup::addPalette(Palette *p) {
    if (!p) {
        qWarning() << "Trying to add a nullptr palette to palette group";
        return;
    }
    if (palettes.contains(p)) {
        // already in group
        return;
    }
    palettes.push_back(p);
    QObject::connect(this, &PaletteGroup::selectedPaletteElementChanged, p, &Palette::globalSelectedElementChanged);
    QObject::connect(p, &Palette::boxClicked, this, &PaletteGroup::boxClicked);
    QObject::connect(p, &Palette::destroyed, this, &PaletteGroup::paletteDestroyed);
}

void PaletteGroup::boxClicked(int idx) {
    Palette *p = qobject_cast<Palette*>(sender());
    if (!p) {
        qWarning() << "Invalid palette in palette group.";
    }

    Element *e = p->element(idx);
    setSelectedPaletteElement(e);
}

void PaletteGroup::paletteDestroyed(QObject* p) {
    palettes.removeOne(qobject_cast<Palette*>(p));
}

}  // namespace Ms
