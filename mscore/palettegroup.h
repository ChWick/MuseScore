#ifndef PALETTEGROUP_H
#define PALETTEGROUP_H

#include "libmscore/element.h"

namespace Ms {

class Palette;
class Element;

///
/// \brief The PaletteGroup class manages that only one button of an attached palette may be selected
///
class PaletteGroup : public QObject {
    Q_OBJECT

    // -----------------------------------------------------
    // Properties

    Q_PROPERTY(Element*
               selectedPaletteElement READ
               selectedPaletteElement WRITE
               setSelectedPaletteElement NOTIFY selectedPaletteElementChanged)
private:
    Element *_selectedPaletteElement     { 0 };
signals:
    void selectedPaletteElementChanged(Element *);
public slots:
    void setSelectedPaletteElement(Element *e) { if (e != _selectedPaletteElement) {_selectedPaletteElement = e; emit selectedPaletteElementChanged(e); } }
public:
    Element *selectedPaletteElement() const {return _selectedPaletteElement;}

    // -----------------------------------------------------
    // Private variables
private:
    QList<Palette*> palettes;

public:
    PaletteGroup(QObject *parent);

    void addPalette(Palette *p);


private slots:
    void boxClicked(int);
    void paletteDestroyed(QObject*);

};

}  // namespace Ms

#endif // PALETTEGROUP_H
